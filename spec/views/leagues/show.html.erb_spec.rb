require 'spec_helper'

describe "leagues/show.html.erb" do
  before(:each) do
    @league = assign(:league, stub_model(League,
      :league_name => "League Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/League Name/)
  end
end
