class Employee < ApplicationRecord

  # has_many :pp_parkingpass
  
  # has_paper_trail class_name: 'PapertrailTable'
  # use audited for model record history
  # audited
  # use papertrail for model record history
  # has_paper_trail


  # simple_form will use this to display employee in dropdown.
  def to_label
    "#{name} - #{clock}"
  end

  def to_s
    # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08	Details	Edit	Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "#{name}, #{clock}"
  end

  def ra_empl_active
    # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08	Details	Edit	Delete
    # http://stackoverflow.com/questions/4829909/how-do-i-print-out-the-contents-of-an-object-in-rails-for-easy-debugging
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "#{name}, #{clock}, activ:#{active}"
  end


end
