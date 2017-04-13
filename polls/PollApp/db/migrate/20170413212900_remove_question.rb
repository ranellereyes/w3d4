class RemoveQuestion < ActiveRecord::Migration[5.0]
  def change
    remove_column :questions, :text
  end
end
