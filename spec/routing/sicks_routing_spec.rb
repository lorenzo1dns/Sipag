require "spec_helper"

describe SicksController do
  describe "routing" do

    it "routes to #index" do
      get("/sicks").should route_to("sicks#index")
    end

    it "routes to #new" do
      get("/sicks/new").should route_to("sicks#new")
    end

    it "routes to #show" do
      get("/sicks/1").should route_to("sicks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sicks/1/edit").should route_to("sicks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sicks").should route_to("sicks#create")
    end

    it "routes to #update" do
      put("/sicks/1").should route_to("sicks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sicks/1").should route_to("sicks#destroy", :id => "1")
    end

  end
end
