class Account < ActiveRecord::Base
  has_many :todo_items
  validates_presence_of :email
end
