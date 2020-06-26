require 'rails_helper'

RSpec.describe "AtEmployeeNotes", type: :request do
  describe "GET /at_employee_notes" do
    it "works! (now write some real specs)" do
      get at_employee_notes_path
      expect(response).to have_http_status(200)
    end
  end
end
