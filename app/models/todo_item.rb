class TodoItem < ActiveRecord::Base
  belongs_to :account
  validates_presence_of :title
  acts_as_list
end
