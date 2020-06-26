require 'rails_helper'

RSpec.describe "AtEmployeeNote2s", type: :request do
  describe "GET /at_employee_note2s" do
    it "works! (now write some real specs)" do
      get at_employee_note2s_path
      expect(response).to have_http_status(200)
    end
  end
end
