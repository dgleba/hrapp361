require 'rails_helper'

RSpec.describe "employee_issue_notes/edit", type: :view do
  before(:each) do
    @employee_issue_note = assign(:employee_issue_note, EmployeeIssueNote.create!(
      :issue => "MyText",
      :employee => nil,
      :name_if_not => "MyString",
      :date_if_not_today => "MyString",
      :user => nil
    ))
  end

  it "renders the edit employee_issue_note form" do
    render

    assert_select "form[action=?][method=?]", employee_issue_note_path(@employee_issue_note), "post" do

      assert_select "textarea#employee_issue_note_issue[name=?]", "employee_issue_note[issue]"

      assert_select "input#employee_issue_note_employee_id[name=?]", "employee_issue_note[employee_id]"

      assert_select "input#employee_issue_note_name_if_not[name=?]", "employee_issue_note[name_if_not]"

      assert_select "input#employee_issue_note_date_if_not_today[name=?]", "employee_issue_note[date_if_not_today]"

      assert_select "input#employee_issue_note_user_id[name=?]", "employee_issue_note[user_id]"
    end
  end
end
