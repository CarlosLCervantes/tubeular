require 'spec_helper'

describe "ListCategories" do
  describe "GET /categories" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get categories_path
      response.status.should be(200)
    end

    it "lists all categories" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      create(:category, name: "Teen")
      create(:category, name: "Milf")
      create(:category, name: "Anal")
      create(:category, name: "Tits")
      get categories_path
      response.body.should include("Teen")
      response.body.should include("Milf")
      response.body.should include("Anal")
      response.body.should include("Tits")
    end
  end
end
