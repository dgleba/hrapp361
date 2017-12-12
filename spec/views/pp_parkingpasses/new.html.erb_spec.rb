require 'rails_helper'

RSpec.describe "pp_parkingpasses/new", type: :view do
  before(:each) do
    assign(:pp_parkingpass, PpParkingpass.new(
      :title => "MyString",
      :employee => nil,
      :parking_pass => "MyString",
      :dept => "MyString",
      :company => "MyString",
      :grouping => "MyString",
      :en_status => "MyString",
      :supervisor => "MyString",
      :en_name => "MyString",
      :en_clock => "MyString"
    ))
  end

  it "renders new pp_parkingpass form" do
    render

    assert_select "form[action=?][method=?]", pp_parkingpasses_path, "post" do

      assert_select "input#pp_parkingpass_title[name=?]", "pp_parkingpass[title]"

      assert_select "input#pp_parkingpass_employee_id[name=?]", "pp_parkingpass[employee_id]"

      assert_select "input#pp_parkingpass_parking_pass[name=?]", "pp_parkingpass[parking_pass]"

      assert_select "input#pp_parkingpass_dept[name=?]", "pp_parkingpass[dept]"

      assert_select "input#pp_parkingpass_company[name=?]", "pp_parkingpass[company]"

      assert_select "input#pp_parkingpass_grouping[name=?]", "pp_parkingpass[grouping]"

      assert_select "input#pp_parkingpass_en_status[name=?]", "pp_parkingpass[en_status]"

      assert_select "input#pp_parkingpass_supervisor[name=?]", "pp_parkingpass[supervisor]"

      assert_select "input#pp_parkingpass_en_name[name=?]", "pp_parkingpass[en_name]"

      assert_select "input#pp_parkingpass_en_clock[name=?]", "pp_parkingpass[en_clock]"
    end
  end
end
