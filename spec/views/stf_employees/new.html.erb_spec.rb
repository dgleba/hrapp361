require 'rails_helper'

RSpec.describe "stf_employees/new", type: :view do
  before(:each) do
    assign(:stf_employee, StfEmployee.new(
      :clocknum => "MyString",
      :name => "MyString",
      :active_status => 1,
      :sort => 1,
      :comment => "MyString"
    ))
  end

  it "renders new stf_employee form" do
    render

    assert_select "form[action=?][method=?]", stf_employees_path, "post" do

      assert_select "input#stf_employee_clocknum[name=?]", "stf_employee[clocknum]"

      assert_select "input#stf_employee_name[name=?]", "stf_employee[name]"

      assert_select "input#stf_employee_active_status[name=?]", "stf_employee[active_status]"

      assert_select "input#stf_employee_sort[name=?]", "stf_employee[sort]"

      assert_select "input#stf_employee_comment[name=?]", "stf_employee[comment]"
    end
  end
end
