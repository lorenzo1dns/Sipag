require "spec_helper"

describe CoinsController do
  describe "routing" do

    it "routes to #index" do
      get("/coins").should route_to("coins#index")
    end

    it "routes to #new" do
      get("/coins/new").should route_to("coins#new")
    end

    it "routes to #show" do
      get("/coins/1").should route_to("coins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coins/1/edit").should route_to("coins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coins").should route_to("coins#create")
    end

    it "routes to #update" do
      put("/coins/1").should route_to("coins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coins/1").should route_to("coins#destroy", :id => "1")
    end

  end
end
