require "spec_helper"

describe ResponseCodesController do
  describe "routing" do

    it "routes to #index" do
      get("/response_codes").should route_to("response_codes#index")
    end

    it "routes to #new" do
      get("/response_codes/new").should route_to("response_codes#new")
    end

    it "routes to #show" do
      get("/response_codes/1").should route_to("response_codes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/response_codes/1/edit").should route_to("response_codes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/response_codes").should route_to("response_codes#create")
    end

    it "routes to #update" do
      put("/response_codes/1").should route_to("response_codes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/response_codes/1").should route_to("response_codes#destroy", :id => "1")
    end

  end
end
