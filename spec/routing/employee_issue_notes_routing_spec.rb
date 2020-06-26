require "rails_helper"

RSpec.describe EmployeeIssueNotesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/employee_issue_notes").to route_to("employee_issue_notes#index")
    end

    it "routes to #new" do
      expect(:get => "/employee_issue_notes/new").to route_to("employee_issue_notes#new")
    end

    it "routes to #show" do
      expect(:get => "/employee_issue_notes/1").to route_to("employee_issue_notes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/employee_issue_notes/1/edit").to route_to("employee_issue_notes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/employee_issue_notes").to route_to("employee_issue_notes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/employee_issue_notes/1").to route_to("employee_issue_notes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/employee_issue_notes/1").to route_to("employee_issue_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/employee_issue_notes/1").to route_to("employee_issue_notes#destroy", :id => "1")
    end

  end
end
