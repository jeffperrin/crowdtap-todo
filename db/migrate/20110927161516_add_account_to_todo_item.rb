class AddAccountToTodoItem < ActiveRecord::Migration
  def self.up
    change_table :todo_items do |t|
      t.integer :account_id
    end
  end

  def self.down
    change_table :todo_items do |t|
      t.remove :account_id
    end
  end
end
