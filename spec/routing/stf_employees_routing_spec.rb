require "rails_helper"

RSpec.describe StfEmployeesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stf_employees").to route_to("stf_employees#index")
    end

    it "routes to #new" do
      expect(:get => "/stf_employees/new").to route_to("stf_employees#new")
    end

    it "routes to #show" do
      expect(:get => "/stf_employees/1").to route_to("stf_employees#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stf_employees/1/edit").to route_to("stf_employees#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stf_employees").to route_to("stf_employees#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stf_employees/1").to route_to("stf_employees#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stf_employees/1").to route_to("stf_employees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stf_employees/1").to route_to("stf_employees#destroy", :id => "1")
    end

  end
end
