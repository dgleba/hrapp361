class EmployeeIssueNote < ApplicationRecord

  default_scope { order(updated_at: :desc) }
  
  validates_presence_of :issue
    
  belongs_to :employee
  belongs_to :user
end
