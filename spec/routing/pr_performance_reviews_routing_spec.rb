require "rails_helper"

RSpec.describe PrPerformanceReviewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pr_performance_reviews").to route_to("pr_performance_reviews#index")
    end

    it "routes to #new" do
      expect(:get => "/pr_performance_reviews/new").to route_to("pr_performance_reviews#new")
    end

    it "routes to #show" do
      expect(:get => "/pr_performance_reviews/1").to route_to("pr_performance_reviews#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pr_performance_reviews/1/edit").to route_to("pr_performance_reviews#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pr_performance_reviews").to route_to("pr_performance_reviews#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pr_performance_reviews/1").to route_to("pr_performance_reviews#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pr_performance_reviews/1").to route_to("pr_performance_reviews#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pr_performance_reviews/1").to route_to("pr_performance_reviews#destroy", :id => "1")
    end

  end
end
