require 'spec_helper'

describe "suggestions/show" do
  before(:each) do
    @suggestion = assign(:suggestion, stub_model(Suggestion,
      :title => "Title",
      :description => "Description",
      :user_id => 1,
      :votes => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
