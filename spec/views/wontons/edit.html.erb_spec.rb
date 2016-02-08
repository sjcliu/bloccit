require 'rails_helper'

RSpec.describe "wontons/edit", type: :view do
  before(:each) do
    @wonton = assign(:wonton, Wonton.create!(
      :title => "MyString",
      :copy => "MyText",
      :price => 1
    ))
  end

  it "renders the edit wonton form" do
    render

    assert_select "form[action=?][method=?]", wonton_path(@wonton), "post" do

      assert_select "input#wonton_title[name=?]", "wonton[title]"

      assert_select "textarea#wonton_copy[name=?]", "wonton[copy]"

      assert_select "input#wonton_price[name=?]", "wonton[price]"
    end
  end
end
