require "spec_helper"

describe BeneficiariesController do
  describe "routing" do

    it "routes to #index" do
      get("/beneficiaries").should route_to("beneficiaries#index")
    end

    it "routes to #new" do
      get("/beneficiaries/new").should route_to("beneficiaries#new")
    end

    it "routes to #show" do
      get("/beneficiaries/1").should route_to("beneficiaries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/beneficiaries/1/edit").should route_to("beneficiaries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/beneficiaries").should route_to("beneficiaries#create")
    end

    it "routes to #update" do
      put("/beneficiaries/1").should route_to("beneficiaries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/beneficiaries/1").should route_to("beneficiaries#destroy", :id => "1")
    end

  end
end
