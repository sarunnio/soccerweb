require 'spec_helper'

describe "teams/show.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :team_name => "Team Name",
      :league_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Team Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
