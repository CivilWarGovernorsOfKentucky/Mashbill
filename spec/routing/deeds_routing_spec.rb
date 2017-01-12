require "rails_helper"

RSpec.describe DeedsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/deeds").to route_to("deeds#index")
    end

    it "routes to #new" do
      expect(:get => "/deeds/new").to route_to("deeds#new")
    end

    it "routes to #show" do
      expect(:get => "/deeds/1").to route_to("deeds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/deeds/1/edit").to route_to("deeds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/deeds").to route_to("deeds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/deeds/1").to route_to("deeds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/deeds/1").to route_to("deeds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/deeds/1").to route_to("deeds#destroy", :id => "1")
    end

  end
end
