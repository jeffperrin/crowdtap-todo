class CreateTodoItems < ActiveRecord::Migration
  def self.up
    create_table :todo_items do |t|
      t.string :title
      t.string :description
      t.datetime :due_date

      t.timestamps
    end
  end

  def self.down
    drop_table :todo_items
  end
end
