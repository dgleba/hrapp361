require 'rails_helper'

RSpec.describe "employee_issue_notes/new", type: :view do
  before(:each) do
    assign(:employee_issue_note, EmployeeIssueNote.new(
      :issue => "MyText",
      :employee => nil,
      :name_if_not => "MyString",
      :comment => "MyText",
      :user => nil
    ))
  end

  it "renders new employee_issue_note form" do
    render

    assert_select "form[action=?][method=?]", employee_issue_notes_path, "post" do

      assert_select "textarea#employee_issue_note_issue[name=?]", "employee_issue_note[issue]"

      assert_select "input#employee_issue_note_employee_id[name=?]", "employee_issue_note[employee_id]"

      assert_select "input#employee_issue_note_name_if_not[name=?]", "employee_issue_note[name_if_not]"

      assert_select "textarea#employee_issue_note_comment[name=?]", "employee_issue_note[comment]"

      assert_select "input#employee_issue_note_user_id[name=?]", "employee_issue_note[user_id]"
    end
  end
end
