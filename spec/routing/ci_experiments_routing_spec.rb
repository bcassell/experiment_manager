require "spec_helper"

describe CiExperimentsController do
  describe "routing" do

    it "routes to #index" do
      get("/ci_experiments").should route_to("ci_experiments#index")
    end

    it "routes to #new" do
      get("/ci_experiments/new").should route_to("ci_experiments#new")
    end

    it "routes to #show" do
      get("/ci_experiments/1").should route_to("ci_experiments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ci_experiments/1/edit").should route_to("ci_experiments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ci_experiments").should route_to("ci_experiments#create")
    end

    it "routes to #update" do
      put("/ci_experiments/1").should route_to("ci_experiments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ci_experiments/1").should route_to("ci_experiments#destroy", :id => "1")
    end

  end
end
