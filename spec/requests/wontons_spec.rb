require 'rails_helper'

RSpec.describe "Wontons", type: :request do
  describe "GET /wontons" do
    it "works! (now write some real specs)" do
      get wontons_path
      expect(response).to have_http_status(200)
    end
  end
end
