require "rails_helper"

RSpec.describe WontonsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wontons").to route_to("wontons#index")
    end

    it "routes to #new" do
      expect(:get => "/wontons/new").to route_to("wontons#new")
    end

    it "routes to #show" do
      expect(:get => "/wontons/1").to route_to("wontons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wontons/1/edit").to route_to("wontons#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wontons").to route_to("wontons#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wontons/1").to route_to("wontons#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wontons/1").to route_to("wontons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wontons/1").to route_to("wontons#destroy", :id => "1")
    end

  end
end
