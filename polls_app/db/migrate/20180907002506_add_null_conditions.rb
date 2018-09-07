class AddNullConditions < ActiveRecord::Migration[5.1]
  def change
    change_column :responses, :user_id, :integer, null: false
    change_column :responses, :answer_choice_id, :integer, null: false
    change_column :answer_choices, :question_id, :integer, null: false
    change_column :questions, :poll_id, :integer, null: false
    change_column :polls, :author_id, :integer, null: false
  end
end
