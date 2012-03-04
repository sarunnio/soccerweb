require 'spec_helper'

describe "teams/new.html.erb" do
  before(:each) do
    assign(:team, stub_model(Team,
      :team_name => "MyString",
      :league_id => 1
    ).as_new_record)
  end

  it "renders new team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path, :method => "post" do
      assert_select "input#team_team_name", :name => "team[team_name]"
      assert_select "input#team_league_id", :name => "team[league_id]"
    end
  end
end
