require "spec_helper"

describe CommunitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/community").should route_to("communities#index")
    end
    
  end
end
