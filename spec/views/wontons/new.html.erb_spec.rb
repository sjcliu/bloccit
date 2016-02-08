require 'rails_helper'

RSpec.describe "wontons/new", type: :view do
  before(:each) do
    assign(:wonton, Wonton.new(
      :title => "MyString",
      :copy => "MyText",
      :price => 1
    ))
  end

  it "renders new wonton form" do
    render

    assert_select "form[action=?][method=?]", wontons_path, "post" do

      assert_select "input#wonton_title[name=?]", "wonton[title]"

      assert_select "textarea#wonton_copy[name=?]", "wonton[copy]"

      assert_select "input#wonton_price[name=?]", "wonton[price]"
    end
  end
end
