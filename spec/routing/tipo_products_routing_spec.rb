require "spec_helper"

describe TipoProductsController do
  describe "routing" do

    it "routes to #index" do
      get("/tipo_products").should route_to("tipo_products#index")
    end

    it "routes to #new" do
      get("/tipo_products/new").should route_to("tipo_products#new")
    end

    it "routes to #show" do
      get("/tipo_products/1").should route_to("tipo_products#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipo_products/1/edit").should route_to("tipo_products#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipo_products").should route_to("tipo_products#create")
    end

    it "routes to #update" do
      put("/tipo_products/1").should route_to("tipo_products#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipo_products/1").should route_to("tipo_products#destroy", :id => "1")
    end

  end
end
