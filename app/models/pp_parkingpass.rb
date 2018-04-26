class PpParkingpass < ApplicationRecord
  belongs_to :employee
  
  default_scope { order(parking_pass: :desc) }
  
  has_paper_trail  class_name: 'PapertrailTable'

  validates :parking_pass, :employee_id, presence: true, uniqueness: true

end
