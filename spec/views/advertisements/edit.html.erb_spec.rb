require 'rails_helper'

RSpec.describe "advertisements/edit", type: :view do
  before(:each) do
    @advertisement = assign(:advertisement, Advertisement.create!(
      :title => "MyString",
      :copy => "MyText",
      :price => 1
    ))
  end

  it "renders the edit advertisement form" do
    render

    assert_select "form[action=?][method=?]", advertisement_path(@advertisement), "post" do

      assert_select "input#advertisement_title[name=?]", "advertisement[title]"

      assert_select "textarea#advertisement_copy[name=?]", "advertisement[copy]"

      assert_select "input#advertisement_price[name=?]", "advertisement[price]"
    end
  end
end
