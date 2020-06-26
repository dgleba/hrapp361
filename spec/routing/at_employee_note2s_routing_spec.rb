require "rails_helper"

RSpec.describe AtEmployeeNote2sController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/at_employee_note2s").to route_to("at_employee_note2s#index")
    end

    it "routes to #new" do
      expect(:get => "/at_employee_note2s/new").to route_to("at_employee_note2s#new")
    end

    it "routes to #show" do
      expect(:get => "/at_employee_note2s/1").to route_to("at_employee_note2s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/at_employee_note2s/1/edit").to route_to("at_employee_note2s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/at_employee_note2s").to route_to("at_employee_note2s#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/at_employee_note2s/1").to route_to("at_employee_note2s#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/at_employee_note2s/1").to route_to("at_employee_note2s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/at_employee_note2s/1").to route_to("at_employee_note2s#destroy", :id => "1")
    end

  end
end
