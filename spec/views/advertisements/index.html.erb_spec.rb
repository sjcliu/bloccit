require 'rails_helper'

RSpec.describe "advertisements/index", type: :view do
  before(:each) do
    assign(:advertisements, [
      Advertisement.create!(
        :title => "Title",
        :copy => "MyText",
        :price => 1
      ),
      Advertisement.create!(
        :title => "Title",
        :copy => "MyText",
        :price => 1
      )
    ])
  end

  it "renders a list of advertisements" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
