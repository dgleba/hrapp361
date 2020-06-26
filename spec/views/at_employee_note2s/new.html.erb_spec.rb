require 'rails_helper'

RSpec.describe "at_employee_note2s/new", type: :view do
  before(:each) do
    assign(:at_employee_note2, AtEmployeeNote2.new(
      :name_if_not => "MyString",
      :employee => nil,
      :issue => "MyString",
      :date_if_not_today => "MyString",
      :user => nil
    ))
  end

  it "renders new at_employee_note2 form" do
    render

    assert_select "form[action=?][method=?]", at_employee_note2s_path, "post" do

      assert_select "input#at_employee_note2_name_if_not[name=?]", "at_employee_note2[name_if_not]"

      assert_select "input#at_employee_note2_employee_id[name=?]", "at_employee_note2[employee_id]"

      assert_select "input#at_employee_note2_issue[name=?]", "at_employee_note2[issue]"

      assert_select "input#at_employee_note2_date_if_not_today[name=?]", "at_employee_note2[date_if_not_today]"

      assert_select "input#at_employee_note2_user_id[name=?]", "at_employee_note2[user_id]"
    end
  end
end
