class AddColumnNameToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string, null: true
  end
end
