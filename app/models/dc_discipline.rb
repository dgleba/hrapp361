class DcDiscipline < ApplicationRecord
  belongs_to :StfEmployee
  belongs_to :DcLevel
  belongs_to :DcStream
end
