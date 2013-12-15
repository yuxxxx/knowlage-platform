class AddAnswerColumnToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :role
    add_column :users, :answer, :boolean
  end
end
