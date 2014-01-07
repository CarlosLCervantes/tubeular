require 'spec_helper'

describe "communities/index" do
  before(:each) do
    assign(:communities, [
      stub_model(Community),
      stub_model(Community)
    ])
  end

  it "renders a list of communities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
