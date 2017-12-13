class PpParkingpass < ApplicationRecord
  belongs_to :employee
  # has_paper_trail
  has_paper_trail class_name: 'PapertrailTable'

end
