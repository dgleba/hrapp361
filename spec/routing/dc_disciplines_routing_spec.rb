require "rails_helper"

RSpec.describe DcDisciplinesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dc_disciplines").to route_to("dc_disciplines#index")
    end

    it "routes to #new" do
      expect(:get => "/dc_disciplines/new").to route_to("dc_disciplines#new")
    end

    it "routes to #show" do
      expect(:get => "/dc_disciplines/1").to route_to("dc_disciplines#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dc_disciplines/1/edit").to route_to("dc_disciplines#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dc_disciplines").to route_to("dc_disciplines#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dc_disciplines/1").to route_to("dc_disciplines#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dc_disciplines/1").to route_to("dc_disciplines#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dc_disciplines/1").to route_to("dc_disciplines#destroy", :id => "1")
    end

  end
end
