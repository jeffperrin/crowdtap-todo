class AddCompletedToTodo < ActiveRecord::Migration
  def self.up
    change_table :todo_items do |t|
      t.boolean :completed, :default => false
    end
  end

  def self.down
    change_table :todo_items do |t|
      t.remove :completed
    end
  end
end
