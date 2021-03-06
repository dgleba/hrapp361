class EmpEnterprise < ApplicationRecord

  self.table_name = "emp_enterprise"
  self.primary_key = 'id_e'

  
  # use papertrail for model record history
  # has_paper_trail class_name: 'PapertrailTable'
  # has_paper_trail

  # use audited for model record history
  # audited

  def to_s
    # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08	Details	Edit	Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "#{name}, #{clock}"
  end
 
  
end
