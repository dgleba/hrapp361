require "rails_helper"

RSpec.describe AtEmployeeNotesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/at_employee_notes").to route_to("at_employee_notes#index")
    end

    it "routes to #new" do
      expect(:get => "/at_employee_notes/new").to route_to("at_employee_notes#new")
    end

    it "routes to #show" do
      expect(:get => "/at_employee_notes/1").to route_to("at_employee_notes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/at_employee_notes/1/edit").to route_to("at_employee_notes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/at_employee_notes").to route_to("at_employee_notes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/at_employee_notes/1").to route_to("at_employee_notes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/at_employee_notes/1").to route_to("at_employee_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/at_employee_notes/1").to route_to("at_employee_notes#destroy", :id => "1")
    end

  end
end
