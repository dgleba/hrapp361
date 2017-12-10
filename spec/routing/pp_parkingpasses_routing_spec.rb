require "rails_helper"

RSpec.describe PpParkingpassesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pp_parkingpasses").to route_to("pp_parkingpasses#index")
    end

    it "routes to #new" do
      expect(:get => "/pp_parkingpasses/new").to route_to("pp_parkingpasses#new")
    end

    it "routes to #show" do
      expect(:get => "/pp_parkingpasses/1").to route_to("pp_parkingpasses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pp_parkingpasses/1/edit").to route_to("pp_parkingpasses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pp_parkingpasses").to route_to("pp_parkingpasses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pp_parkingpasses/1").to route_to("pp_parkingpasses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pp_parkingpasses/1").to route_to("pp_parkingpasses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pp_parkingpasses/1").to route_to("pp_parkingpasses#destroy", :id => "1")
    end

  end
end
