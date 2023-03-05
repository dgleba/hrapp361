class PrPerformanceReview < ApplicationRecord

  has_paper_trail class_name: 'PapertrailTable'

  belongs_to :employee

  paginates_per 200
    

  # ccommented out default scope 2022-10-03 David Gleba.
  # default_scope { order(review_date: :asc).order(supervisor_approval: :asc).order(assigned_to_reviewer: :asc).order(created_at: :asc) }

  # rails admin will obey this. I want rails admin to see them all.
  # default_scope { where('employee_issue_notes.created_at > ?', 8.days.ago) }
  
  
  scope :ondeck,  -> {  where('assigned_to_reviewer <> ? and hr_manager_approval = ?', '', ''  ).order(supervisor_approval: :asc).order(assigned_to_reviewer: :asc).order(created_at: :asc) }

  # scope :ondeck03,  -> {  where('assigned_to_reviewer <> ? and hr_manager_approval = ?', '', ''  ).order(review_date: :asc).order(supervisor_approval: :asc).order(assigned_to_reviewer: :asc) }
  # scope :ondeck02,  -> {  where('assigned_to_reviewer <> ? and hr_manager_approval = ?', '', ''  ).order(review_date: :asc).order(supervisor_approval: :asc).order(assigned_to_reviewer: :asc) }
  # scope :ondeck01,  -> { where('assigned_to_reviewer <> ? and hr_manager_approval = ?', '', ''  )  }

  # scope :ondeck2,  -> { where('supervisor_approval > ?',  "aa" )  }
  # scope :ondeck3,  -> { where('employee_id > ?',  7000 )  }
  # scope :ondeck4,  -> { where(supervisor_approval:  nil)  }
  # scope :ondeck5,  -> { where('assigned_to_reviewer <> ? and supervisor_approval > ?', '' , "aa" )  }

  # notes..
  # scope :t1,  -> { where(comment: > ?) }
  # scope :lastfew1,  -> { where(created_at: 1.day.ago..Float::INFINITY) }
  # scope :lastfew,  -> { where(":created_at > ? Date.now-3.days ) }
  # scope :last,  -> {where  :created_at >  Date.now-3.days }
  # example.. scope :due where(:progress_date < Date.now-7.days)
  # scope :notreviewed, -> (param1) { where.not("is_closed like ?", "#{param1}").where("reviewed_mark = ?", 0 ).order(dept: :asc, created_at: :asc, id: :asc )}


end
