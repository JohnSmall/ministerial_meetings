require "rails_helper"

RSpec.describe HospitalitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hospitalities").to route_to("hospitalities#index")
    end

    it "routes to #new" do
      expect(:get => "/hospitalities/new").to route_to("hospitalities#new")
    end

    it "routes to #show" do
      expect(:get => "/hospitalities/1").to route_to("hospitalities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hospitalities/1/edit").to route_to("hospitalities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hospitalities").to route_to("hospitalities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hospitalities/1").to route_to("hospitalities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hospitalities/1").to route_to("hospitalities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hospitalities/1").to route_to("hospitalities#destroy", :id => "1")
    end

  end
end
