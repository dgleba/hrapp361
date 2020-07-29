class EmployeeIssueNote < ApplicationRecord
  
  has_paper_trail class_name: 'PapertrailTable'
  
  default_scope { order(updated_at: :desc) }
  
  paginates_per 50
  
  validates_presence_of :issue
    
  belongs_to :employee
  belongs_to :user , class_name: 'User'
end
