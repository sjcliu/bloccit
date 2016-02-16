require 'rails_helper'

RSpec.describe "sponsored_posts/show", type: :view do
  before(:each) do
    @sponsored_post = assign(:sponsored_post, SponsoredPost.create!(
      :title => "Title",
      :body => "MyText",
      :price => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
