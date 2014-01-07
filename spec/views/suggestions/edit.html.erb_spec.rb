require 'spec_helper'

describe "suggestions/edit" do
  before(:each) do
    @suggestion = assign(:suggestion, stub_model(Suggestion,
      :title => "MyString",
      :description => "MyString",
      :user_id => 1,
      :votes => 1
    ))
  end

  it "renders the edit suggestion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", suggestion_path(@suggestion), "post" do
      assert_select "input#suggestion_title[name=?]", "suggestion[title]"
      assert_select "input#suggestion_description[name=?]", "suggestion[description]"
      assert_select "input#suggestion_user_id[name=?]", "suggestion[user_id]"
      assert_select "input#suggestion_votes[name=?]", "suggestion[votes]"
    end
  end
end
