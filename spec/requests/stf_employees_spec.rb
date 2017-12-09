require 'rails_helper'

RSpec.describe "StfEmployees", type: :request do
  describe "GET /stf_employees" do
    it "works! (now write some real specs)" do
      get stf_employees_path
      expect(response).to have_http_status(200)
    end
  end
end
