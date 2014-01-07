require 'spec_helper'

describe "communities/show" do
  before(:each) do
    @community = assign(:community, stub_model(Community))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
