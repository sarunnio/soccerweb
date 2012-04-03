require 'spec_helper'

describe "books/show.html.erb" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "Title",
      :author => "Author",
      :isbn => "Isbn",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Isbn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
