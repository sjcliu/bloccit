require 'rails_helper'

RSpec.describe "wontons/show", type: :view do
  before(:each) do
    @wonton = assign(:wonton, Wonton.create!(
      :title => "Title",
      :copy => "MyText",
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
