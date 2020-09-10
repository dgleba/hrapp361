class EmployeeIssueNote < ApplicationRecord
  
  has_paper_trail class_name: 'PapertrailTable'
  
  default_scope { order(updated_at: :desc) }
  
  paginates_per 100
  
  validates_presence_of :issue
    
  belongs_to :employee
  belongs_to :user , class_name: 'User'
  

  # rails admin will obey this. I want rails admin to see them all.
  # default_scope { where('employee_issue_notes.created_at > ?', 8.days.ago) }
  
  scope :lfew,  -> { where('employee_issue_notes.created_at > ?', 8.days.ago) }

  # notes..
  # scope :t1,  -> { where(comment: > ?) }
  #scope :lastfew1,  -> { where(created_at: 1.day.ago..Float::INFINITY) }
  # scope :lastfew,  -> { where(":created_at > ? Date.now-3.days ) }
  # scope :last,  -> {where  :created_at >  Date.now-3.days }
  # example.. scope :due where(:progress_date < Date.now-7.days)
  # scope :notreviewed, -> (param1) { where.not("is_closed like ?", "#{param1}").where("reviewed_mark = ?", 0 ).order(dept: :asc, created_at: :asc, id: :asc )}


end

