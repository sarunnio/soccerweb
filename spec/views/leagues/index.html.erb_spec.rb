require 'spec_helper'

describe "leagues/index.html.erb" do
  before(:each) do
    assign(:leagues, [
      stub_model(League,
        :league_name => "League Name"
      ),
      stub_model(League,
        :league_name => "League Name"
      )
    ])
  end

  it "renders a list of leagues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "League Name".to_s, :count => 2
  end
end
