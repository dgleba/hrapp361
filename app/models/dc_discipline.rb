class DcDiscipline < ApplicationRecord
  belongs_to :employee
  belongs_to :dc_level
  belongs_to :dc_stream
end
