class Ability
  include CanCan::Ability

  def initialize(user)

    if user.lr_admin?
      can :manage, :all
      can :access, :rails_admin       
      can :dashboard                  # allow access to dashboard

    # remember to add roles to user.rb
    #
    # http://hibbard.eu/authentication-with-devise-and-cancancan-in-rails-4-2/  
    #

    elsif user.lr_delete?
      can :access, :rails_admin      
      can :dashboard                  # allow access to dashboard
      can :show_in_app, :all
      # can :read, :all 
      can :read,  [ DcDiscipline, DcLevel, DcStream, Employee, PpParkingpass, PapertrailTable, User, Role, EmpHomephone , EmpEnterprise, EmpCeridian, EmployeeIssueNote ]
      # can edit these..
      can [ :create, :update, ], [ DcDiscipline, PpParkingpass, User, EmployeeIssueNote ]
      # can [ :create, :update, ], [ Product , Pfeature, ProductFeature, CountryOfOrigin  ]
      # can  delete these...
      can [ :destroy, ], [ DcDiscipline, PpParkingpass  ]
      can :export,  :all 
      can :history,  :all

    
    elsif user.lr_supervisor?
      can :access, :rails_admin      
      can :dashboard                  # allow access to dashboard
      can :show_in_app, :all
      # can :read, :all 
      can :read,  [ DcDiscipline, DcLevel, DcStream, Employee, PpParkingpass, PapertrailTable, User, Role, EmpHomephone , EmpEnterprise, EmpCeridian, EmployeeIssueNote ]
      can [ :create, :update, ], [ DcDiscipline, PpParkingpass , EmployeeIssueNote]
      # can [ :create, :update, ], [ Product , Pfeature, ProductFeature, CountryOfOrigin  ]
      # can [ :destroy, ], [ PpParkingpass  ]
      can :export,  :all 
      can :history,  :all

    elsif user.lr_regular?
      can :access, :rails_admin       
      # can :dashboard                  # allow access to dashboard
      can :show_in_app, :all
      can :read,  [ DcDiscipline, DcLevel, DcStream, Employee, PpParkingpass, Role , EmployeeIssueNote , User]
      can [ :update, ], [ DcDiscipline,  EmployeeIssueNote ]
      can [ :create, ], [  EmployeeIssueNote ]
      # can :read, [  Role, User, ]
      # can :read, [  Answer, PartNumber, ProcessStep,  Question, Survey, QuestionList ]
      # can [ :create, :update, ], [  Answer ]
      cannot :export,  :all 

    elsif user.lr_future4?
      # can :read, [ Product, Role, User]
      # can [ :create, :update, :destroy, ], [ Product, ]
      
    elsif user.lr_readonly?
      can :read, Role

    elsif user.lr_minimal?
      can :read, Role

    end
    
  end
   
end

