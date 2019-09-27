require "rails_helper"

RSpec.describe Spree::TemplatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/spree/templates").to route_to("spree/templates#index")
    end

    it "routes to #new" do
      expect(:get => "/spree/templates/new").to route_to("spree/templates#new")
    end

    it "routes to #show" do
      expect(:get => "/spree/templates/1").to route_to("spree/templates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/spree/templates/1/edit").to route_to("spree/templates#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/spree/templates").to route_to("spree/templates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/spree/templates/1").to route_to("spree/templates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/spree/templates/1").to route_to("spree/templates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/spree/templates/1").to route_to("spree/templates#destroy", :id => "1")
    end
  end
end
