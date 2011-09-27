class AddPositionColumnToTodo < ActiveRecord::Migration
  def self.up
    change_table :todo_items do |t|
      t.integer :position
    end
  end

  def self.down
    change_table :todo_items do |t|
      t.remove :position
    end
  end
end
