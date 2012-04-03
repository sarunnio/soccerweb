require 'spec_helper'

describe "books/edit.html.erb" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "MyString",
      :author => "MyString",
      :isbn => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path(@book), :method => "post" do
      assert_select "input#book_title", :name => "book[title]"
      assert_select "input#book_author", :name => "book[author]"
      assert_select "input#book_isbn", :name => "book[isbn]"
      assert_select "input#book_price", :name => "book[price]"
    end
  end
end
