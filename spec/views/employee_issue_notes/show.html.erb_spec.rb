require 'rails_helper'

RSpec.describe "employee_issue_notes/show", type: :view do
  before(:each) do
    @employee_issue_note = assign(:employee_issue_note, EmployeeIssueNote.create!(
      :issue => "MyText",
      :employee => nil,
      :name_if_not => "Name If Not",
      :date_if_not_today => "Date If Not Today",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name If Not/)
    expect(rendered).to match(/Date If Not Today/)
    expect(rendered).to match(//)
  end
end
