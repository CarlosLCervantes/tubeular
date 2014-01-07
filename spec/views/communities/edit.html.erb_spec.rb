require 'spec_helper'

describe "communities/edit" do
  before(:each) do
    @community = assign(:community, stub_model(Community))
  end

  it "renders the edit community form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", community_path(@community), "post" do
    end
  end
end
