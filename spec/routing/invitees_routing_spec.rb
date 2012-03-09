require "spec_helper"

describe InviteesController do
  describe "routing" do

    it "routes to #index" do
      get("/invitees").should route_to("invitees#index")
    end

    it "routes to #new" do
      get("/invitees/new").should route_to("invitees#new")
    end

    it "routes to #show" do
      get("/invitees/1").should route_to("invitees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/invitees/1/edit").should route_to("invitees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/invitees").should route_to("invitees#create")
    end

    it "routes to #update" do
      put("/invitees/1").should route_to("invitees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/invitees/1").should route_to("invitees#destroy", :id => "1")
    end

  end
end
