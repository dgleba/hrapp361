class DcDiscipline < ApplicationRecord
  belongs_to :employee
  belongs_to :dc_level
  belongs_to :dc_stream

  default_scope { order(id: :desc) }
  
  has_paper_trail class_name: 'PapertrailTable'

end
