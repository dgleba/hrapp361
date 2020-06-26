require 'rails_helper'

RSpec.describe "EmployeeIssueNotes", type: :request do
  describe "GET /employee_issue_notes" do
    it "works! (now write some real specs)" do
      get employee_issue_notes_path
      expect(response).to have_http_status(200)
    end
  end
end
