require 'rails_helper'

RSpec.describe "sponsored_posts/index", type: :view do
  before(:each) do
    assign(:sponsored_posts, [
      SponsoredPost.create!(
        :title => "Title",
        :body => "MyText",
        :price => 1
      ),
      SponsoredPost.create!(
        :title => "Title",
        :body => "MyText",
        :price => 1
      )
    ])
  end

  it "renders a list of sponsored_posts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
