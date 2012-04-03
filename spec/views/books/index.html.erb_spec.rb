require 'spec_helper'

describe "books/index.html.erb" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :title => "Title",
        :author => "Author",
        :isbn => "Isbn",
        :price => "9.99"
      ),
      stub_model(Book,
        :title => "Title",
        :author => "Author",
        :isbn => "Isbn",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
