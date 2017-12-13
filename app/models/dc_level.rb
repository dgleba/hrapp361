class DcLevel < ApplicationRecord

  def to_s
    #"Name:#{self.name} Age:#{self.age} Weight: #{self.weight}"
    "#{name}"
  end
  
end
