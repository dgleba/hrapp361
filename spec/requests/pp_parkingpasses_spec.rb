require 'rails_helper'

RSpec.describe "PpParkingpasses", type: :request do
  describe "GET /pp_parkingpasses" do
    it "works! (now write some real specs)" do
      get pp_parkingpasses_path
      expect(response).to have_http_status(200)
    end
  end
end
