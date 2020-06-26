require 'rails_helper'

RSpec.describe "at_employee_notes/new", type: :view do
  before(:each) do
    assign(:at_employee_note, AtEmployeeNote.new(
      :name_if_not => "MyString",
      :employee => nil,
      :issue => "MyString",
      :date_if_not_today => "MyString"
    ))
  end

  it "renders new at_employee_note form" do
    render

    assert_select "form[action=?][method=?]", at_employee_notes_path, "post" do

      assert_select "input#at_employee_note_name_if_not[name=?]", "at_employee_note[name_if_not]"

      assert_select "input#at_employee_note_employee_id[name=?]", "at_employee_note[employee_id]"

      assert_select "input#at_employee_note_issue[name=?]", "at_employee_note[issue]"

      assert_select "input#at_employee_note_date_if_not_today[name=?]", "at_employee_note[date_if_not_today]"
    end
  end
end
