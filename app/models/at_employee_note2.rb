class AtEmployeeNote2 < ApplicationRecord
  belongs_to :employee
  belongs_to :user
end
