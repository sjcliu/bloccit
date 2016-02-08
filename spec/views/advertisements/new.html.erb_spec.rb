require 'rails_helper'

RSpec.describe "advertisements/new", type: :view do
  before(:each) do
    assign(:advertisement, Advertisement.new(
      :title => "MyString",
      :copy => "MyText",
      :price => 1
    ))
  end

  it "renders new advertisement form" do
    render

    assert_select "form[action=?][method=?]", advertisements_path, "post" do

      assert_select "input#advertisement_title[name=?]", "advertisement[title]"

      assert_select "textarea#advertisement_copy[name=?]", "advertisement[copy]"

      assert_select "input#advertisement_price[name=?]", "advertisement[price]"
    end
  end
end
