class EmployeeIssueNote < ApplicationRecord

  default_scope { order(updated_at: :desc) }
  
  belongs_to :employee
  belongs_to :user
end
