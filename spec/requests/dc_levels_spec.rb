require 'rails_helper'

RSpec.describe "DcLevels", type: :request do
  describe "GET /dc_levels" do
    it "works! (now write some real specs)" do
      get dc_levels_path
      expect(response).to have_http_status(200)
    end
  end
end
