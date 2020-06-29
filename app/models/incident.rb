class Incident < ActiveRecord::Base
  
    has_paper_trail class_name: 'PapertrailTable'
  
end
