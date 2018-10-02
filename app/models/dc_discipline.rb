class DcDiscipline < ApplicationRecord
  belongs_to :employee
  belongs_to :dc_level
  belongs_to :dc_stream

  default_scope { order(id: :desc) }
  
  has_paper_trail class_name: 'PapertrailTable'
  
  validates_presence_of :date_discipline, :discipline_by
  
  def name
    # prevent nilclass error..
    #if question_list&.id.present?  # Notice the & lonely operator.  2017-05-16 kwruby Josh Teeter, Andrew Sullivan, and ? I don't know his name.
    if employee  #&.id.present? 
     "Disc-id#:#{self.id} #{employee.name}"
    elsif
      "_._"
    end
  end

  def radm_name
    # prevent nilclass error..
    #if question_list&.id.present?  # Notice the & lonely operator.  2017-05-16 kwruby Josh Teeter, Andrew Sullivan, and ? I don't know his name.
    if employee  #&.id.present? 
     "Disc-id#:#{self.id} #{employee.name}"
    elsif
      "_._"
    end
  end

  
end
