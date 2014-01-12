require "spec_helper"

describe SuggestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/suggestions").should route_to("suggestions#index")
    end

    it "routes to #new" do
      get("/suggestions/new").should route_to("suggestions#new")
    end

    it "routes to #create" do
      post("/suggestions").should route_to("suggestions#create")
    end

  end
end
