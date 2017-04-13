# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create(:user_name => "Vu")
u2 = User.create(:user_name => "Janice")
u3 = User.create(:user_name => "Break_dancing_Winber")
u4 = User.create(:user_name => "Louis_the_TA")
u5 = User.create(:user_name => "Jeff_the_Godddd")

Poll.destroy_all
p1 = Poll.create(:title => 'favorite NBA team', author_id: u1.id)

Question.destroy_all
q1 = Question.create(:poll_id => p1.id, :question => "who's your team?")
q2 = Question.create(:poll_id => p1.id, :question => "how much is LeBron a little b****?")

AnswerChoice.destroy_all
a1 = AnswerChoice.create(:question_id => q1.id, :text => "Warriors")
a2 = AnswerChoice.create(:question_id => q1.id, :text => "Team Jeff_the_Godddd")
a3 = AnswerChoice.create(:question_id => q1.id, :text => "Lakers")
a4 = AnswerChoice.create(:question_id => q1.id, :text => "Monstars")

a5 = AnswerChoice.create(:question_id => q2.id, :text => "Very")
a6 = AnswerChoice.create(:question_id => q2.id, :text => "A lot")
a7 = AnswerChoice.create(:question_id => q2.id, :text => "Yes")
a8 = AnswerChoice.create(:question_id => q2.id, :text => "I can't say No")

Response.destroy_all
r1 = Response.create(user_id: u1.id, answer_choice_id: a3.id)
r2 = Response.create(user_id: u2.id, answer_choice_id: a2.id)
r3 = Response.create(user_id: u3.id, answer_choice_id: a2.id)
r4 = Response.create(user_id: u4.id, answer_choice_id: a2.id)
r5 = Response.create(user_id: u5.id, answer_choice_id: a2.id)
r6 = Response.create(user_id: u1.id, answer_choice_id: a2.id)


r1_2 = Response.create(user_id: u1.id, answer_choice_id: a5.id)
r2_2 = Response.create(user_id: u2.id, answer_choice_id: a5.id)
r3_2 = Response.create(user_id: u3.id, answer_choice_id: a5.id)
r4_2 = Response.create(user_id: u4.id, answer_choice_id: a5.id)
r5_2 = Response.create(user_id: u5.id, answer_choice_id: a5.id)
