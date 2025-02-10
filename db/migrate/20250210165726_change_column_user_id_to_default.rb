class ChangeColumnUserIdToDefault < ActiveRecord::Migration[8.0]
  def change
    change_column :todo_items, :user_id, :bigint, default: nil
  end
end
