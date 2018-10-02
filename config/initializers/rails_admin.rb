# reload initializer in development... https://github.com/sferik/rails_admin/issues/2726#issuecomment-387521401
RailsAdmin::Engine.config.to_prepare do
  if Rails.env.development?
    RailsAdmin::Config.reset
    load "#{Rails.root}/config/initializers/rails_admin.rb"
  end
end

Rails.application.eager_load!

RailsAdmin.config do |config|

  #   I have not been able to get this to work...
  # config all models at once...
  # ActiveRecord::Base.descendants.each do |imodel|
    # config.model "#{imodel.name}" do
      # #
      # # list do
        # # exclude_fields :created_at, :updated_at
      # # end
      # #
      # edit do
        # fields do
          # help false
        # end
      # end
    # end
  # end
  # # https://github.com/sferik/rails_admin/wiki/Models

  config.main_app_name = Proc.new {
    ["HRapp361", "(#{Time.zone.now.to_s(:time)})"]
  }
  
  config.total_columns_width = 9999999

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
   config.authorize_with :cancan
     # config.authorize_with :cancan, AdminAbility

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
    config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

   ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.actions do
    #dashboard                     # mandatory
    # hide disable record count bar graphs, https://github.com/sferik/rails_admin/wiki/Dashboard-action
    dashboard do
      statistics false
    end
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    ## With an audit adapter, you can add:
     # history_index
     # history_show
  end

  # got error.. include_all_fields
  # don't exclude empty fields in show...
  config.compact_show_view = false
  
  # config.excluded_models = ["CorrectiveAction", "Incident"]

  config.model 'DcDiscipline' do

    # http://stackoverflow.com/questions/11658281/rails-admin-display-name-instead-of-id  # 2017-05-16 kwruby 
    #   see the model for this item as well.
    object_label_method do
      :radm_name
    end

    edit do
      #include_all_fields # all other default fields will be added after, conveniently
      exclude_fields :output, :sigpad_supervisor, :versions # but you still can remove fields
      exclude_fields :active_status, :sort_order, :title , :stream_type # but you still can remove fields
      #
      fields do
        help false
      end
      
      field :hr_manager_approval do
        help 'By typing in their own name, the HR Manager approves this discipline. The person should type their own name in this box for themself only.'
      end
      field :dept_manager_approval do
        help 'By typing in their own name, the Dept Manager approves this discipline.  The person should type their own name in this box for themself only.'
      end
      field :documents_on_file do
        help "Additional documents are on file in the employee's electronic personnel file folder."
      end
      
      #https://github.com/sferik/rails_admin/issues/1395  - rails admin associated_collection_scope
      field :employee do
        associated_collection_cache_all false
        associated_collection_scope do
          Proc.new { |scope|
            scope = scope.where(active: 1) # if location.present?
            }
        end
      end  

      field :dc_level do
        associated_collection_cache_all false
        associated_collection_scope do
          Proc.new { |scope|
            scope = scope.where(active_status: 1) # if location.present?
            }
        end
      end      
    end
    #
    list do
      include_all_fields # all other default fields will be added after, conveniently
      exclude_fields :active_status # but you still can remove fields
      exclude_fields :sort_order
      # https://stackoverflow.com/questions/13529634/rails-admin-searchable-association
      field :employee do
        queryable true
        searchable [ :name, :clock ]
      end      
    end
    # 
    object_label_method {  :to_s }
  end

  
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
  config.model 'PpParkingpass' do
    edit do
      exclude_fields :versions, :dept, :company, :grouping, :en_status, :supervisor, :en_name, :en_clock, :clock1, :title
      # field :employee
      # field :parking_pass
      #
      fields do
        help false
      end
      #https://github.com/sferik/rails_admin/issues/1395  - rails admin associated_collection_scope
      field :employee do
        #searchable [ :name, :clock ]
        associated_collection_cache_all false
        associated_collection_scope do
          Proc.new { |scope|
            scope = scope.where(active: 1) # if location.present?
           }
        end
      end     
    end
    #
    list do
      exclude_fields :dept, :company, :grouping, :en_status, :supervisor, :en_name, :en_clock, :clock1, :title
      # https://stackoverflow.com/questions/13529634/rails-admin-searchable-association
      # this solves .. rails_admin filter association returns all rows
      field :employee do
        queryable true
        searchable [ :name, :clock ]
      end
    end
  end
  
  config.model 'DcLevel' do
    list do 
       sort_by :sort_order 
      # field :id do
        # sort_reverse false  # this seemed to prevent any from showing in the list view.
      # end
    end  
  end
  
  config.model 'Employee' do
    object_label_method {  :ra_empl_active }
    list do 
      sort_by :name
    end  
  end  
 
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
  #  http://stackoverflow.com/questions/11658281/rails-admin-display-name-instead-of-id
  # 2017-05-16 kwruby 
  # see the model for this item as well.
  # config.model 'QuestionList' do
    # object_label_method do
      # :ra_question_list_nameref
    # end
  # end

end
