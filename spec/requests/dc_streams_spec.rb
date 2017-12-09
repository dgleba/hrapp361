require 'rails_helper'

RSpec.describe "DcStreams", type: :request do
  describe "GET /dc_streams" do
    it "works! (now write some real specs)" do
      get dc_streams_path
      expect(response).to have_http_status(200)
    end
  end
end
