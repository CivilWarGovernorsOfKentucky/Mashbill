require "rails_helper"

RSpec.describe RaceDescriptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/race_descriptions").to route_to("race_descriptions#index")
    end

    it "routes to #new" do
      expect(:get => "/race_descriptions/new").to route_to("race_descriptions#new")
    end

    it "routes to #show" do
      expect(:get => "/race_descriptions/1").to route_to("race_descriptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/race_descriptions/1/edit").to route_to("race_descriptions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/race_descriptions").to route_to("race_descriptions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/race_descriptions/1").to route_to("race_descriptions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/race_descriptions/1").to route_to("race_descriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/race_descriptions/1").to route_to("race_descriptions#destroy", :id => "1")
    end

  end
end
