require 'rails_helper'

RSpec.describe "wontons/index", type: :view do
  before(:each) do
    assign(:wontons, [
      Wonton.create!(
        :title => "Title",
        :copy => "MyText",
        :price => 1
      ),
      Wonton.create!(
        :title => "Title",
        :copy => "MyText",
        :price => 1
      )
    ])
  end

  it "renders a list of wontons" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
