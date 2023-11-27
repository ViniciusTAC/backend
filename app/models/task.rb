class Task < ApplicationRecord
  belongs_to :status
  has_many :sub_tasks
  
  
  
  
  
  accepts_nested_attributes_for :sub_tasks, allow_destroy: true




end
