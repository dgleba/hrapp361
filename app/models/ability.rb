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
      can :read,  [ DcDiscipline, DcLevel, DcStream, Employee, PpParkingpass, PapertrailTable, User, Role, EmpHomephone , EmpEnterprise, EmpCeridian, 
                EmployeeIssueNote, PrPerformanceReview ]
      # can edit these..
      can [ :create, :update, ], [ DcDiscipline, PpParkingpass, User, EmployeeIssueNote, PrPerformanceReview ]
      # can [ :create, :update, ], [ Product , Pfeature, ProductFeature, CountryOfOrigin  ]
      # can  delete these...
      can [ :destroy, ], [ DcDiscipline, PpParkingpass, PrPerformanceReview  ]
      can :export,  :all 
      can :history,  :all

    
    elsif user.lr_supervisor?
      can :access, :rails_admin      
      can :dashboard                  # allow access to dashboard
      can :show_in_app, :all
      # can :read, :all 
      can :read,  [ DcDiscipline, DcLevel, DcStream, Employee, PpParkingpass, PapertrailTable, User, Role, EmpHomephone , EmpEnterprise, EmpCeridian,
                 EmployeeIssueNote,  PrPerformanceReview  ]
      can [ :create, :update, ], [ DcDiscipline, PpParkingpass , EmployeeIssueNote,  PrPerformanceReview ]
      # can [ :create, :update, ], [ Product , Pfeature, ProductFeature, CountryOfOrigin  ]
      # can [ :destroy, ], [ PpParkingpass  ]
      can :export,  :all 
      can :history,  :all

    elsif user.lr_regular?
      can :access, :rails_admin       
      # can :dashboard                  # allow access to dashboard
      can :show_in_app, :all
      can :read,  [ DcDiscipline, DcLevel, DcStream, Employee, PpParkingpass, Role , EmployeeIssueNote , User,  PrPerformanceReview]
      can [ :update, ], [ DcDiscipline,  EmployeeIssueNote,   PrPerformanceReview ]
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
      can :access, :rails_admin       
      can :dashboard 
      can :show_in_app, :all
      can :read,  [ DcDiscipline, DcLevel, DcStream, Employee, PpParkingpass, Role , EmployeeIssueNote , User]
      cannot :export,  :all 
	  
	  
    elsif user.lr_minimal?
      can :read, Role

    end
    
  end
   
end

