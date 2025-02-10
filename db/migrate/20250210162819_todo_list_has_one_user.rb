class TodoListHasOneUser < ActiveRecord::Migration[8.0]
  def change
    add_reference :todo_lists, :user, null: false, foreign_key: true
    add_column :todo_items, :user_id, :bigint
  end
end
