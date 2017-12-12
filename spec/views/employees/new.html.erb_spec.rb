require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      :name => "MyString",
      :clock => "MyString",
      :active_status => 1,
      :sort => 1
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input#employee_name[name=?]", "employee[name]"

      assert_select "input#employee_clock[name=?]", "employee[clock]"

      assert_select "input#employee_active_status[name=?]", "employee[active_status]"

      assert_select "input#employee_sort[name=?]", "employee[sort]"
    end
  end
end
