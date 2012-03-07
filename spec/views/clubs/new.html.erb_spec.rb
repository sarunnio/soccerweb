require 'spec_helper'

describe "clubs/new.html.erb" do
  before(:each) do
    assign(:club, stub_model(Club,
      :club_name => "MyString",
      :league_id => 1
    ).as_new_record)
  end

  it "renders new club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clubs_path, :method => "post" do
      assert_select "input#club_club_name", :name => "club[club_name]"
      assert_select "input#club_league_id", :name => "club[league_id]"
    end
  end
end
