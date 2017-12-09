class DcDiscipline < ApplicationRecord
  belongs_to :stf_employee
  belongs_to :dc_level
  belongs_to :dc_stream
end
