class Response < ApplicationRecord
  validates :answer_choice_id, null: false
  validates :user_id, respondent_already_answered?: false

  belongs_to :answer_choice,
    class_name: 'AnswerChoice',
    primary_key: :id,
    foreign_key: :answer_choice_id

  belongs_to :respondent,
    class_name: 'User',
    primary_key: :id,
    foreign_key: :user_id

  has_one :question,
    through: :answer_choice

  def sibling_responses
    responses = question.responses.where.not(user_id: self.id)
  end

  def respondent_already_answered?
    sibling_responses.exists?(user_id: self.id)
  end
end
