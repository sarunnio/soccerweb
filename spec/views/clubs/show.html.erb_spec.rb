require 'spec_helper'

describe "clubs/show.html.erb" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
      :club_name => "Club Name",
      :league_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Club Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
