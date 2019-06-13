class PpParkingpass < ApplicationRecord
  belongs_to :employee
  
  default_scope { order(parking_pass: :desc) }
  
  has_paper_trail  class_name: 'PapertrailTable'

  validates :parking_pass, :employee_id, presence: true, uniqueness: true
  
  validates :parking_pass, length: {minimum: 4, maximum: 25}
  
  def name
    # prevent nilclass error..
    #if question_list&.id.present?  # Notice the & lonely operator.  2017-05-16 kwruby Josh Teeter, Andrew Sullivan, and ? I don't know his name.
    if parking_pass  #&.id.present? 
     "Pass# #{self.parking_pass} "
    elsif
      "_._"
    end
  end

  
end
