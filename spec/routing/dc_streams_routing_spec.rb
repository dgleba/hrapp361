require "rails_helper"

RSpec.describe DcStreamsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dc_streams").to route_to("dc_streams#index")
    end

    it "routes to #new" do
      expect(:get => "/dc_streams/new").to route_to("dc_streams#new")
    end

    it "routes to #show" do
      expect(:get => "/dc_streams/1").to route_to("dc_streams#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dc_streams/1/edit").to route_to("dc_streams#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dc_streams").to route_to("dc_streams#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dc_streams/1").to route_to("dc_streams#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dc_streams/1").to route_to("dc_streams#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dc_streams/1").to route_to("dc_streams#destroy", :id => "1")
    end

  end
end
