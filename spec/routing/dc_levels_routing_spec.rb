require "rails_helper"

RSpec.describe DcLevelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dc_levels").to route_to("dc_levels#index")
    end

    it "routes to #new" do
      expect(:get => "/dc_levels/new").to route_to("dc_levels#new")
    end

    it "routes to #show" do
      expect(:get => "/dc_levels/1").to route_to("dc_levels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dc_levels/1/edit").to route_to("dc_levels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dc_levels").to route_to("dc_levels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dc_levels/1").to route_to("dc_levels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dc_levels/1").to route_to("dc_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dc_levels/1").to route_to("dc_levels#destroy", :id => "1")
    end

  end
end
