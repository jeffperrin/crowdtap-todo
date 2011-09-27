class Account < ActiveRecord::Base
  has_many :todo_items, :order => "position"
  validates_presence_of :email
end
