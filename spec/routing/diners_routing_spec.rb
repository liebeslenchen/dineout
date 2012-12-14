require "spec_helper"

describe DinersController do
  describe "routing" do

    it "routes to #index" do
      get("/diners").should route_to("diners#index")
    end

    it "routes to #new" do
      get("/diners/new").should route_to("diners#new")
    end

    it "routes to #show" do
      get("/diners/1").should route_to("diners#show", :id => "1")
    end

    it "routes to #edit" do
      get("/diners/1/edit").should route_to("diners#edit", :id => "1")
    end

    it "routes to #create" do
      post("/diners").should route_to("diners#create")
    end

    it "routes to #update" do
      put("/diners/1").should route_to("diners#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/diners/1").should route_to("diners#destroy", :id => "1")
    end

  end
end
