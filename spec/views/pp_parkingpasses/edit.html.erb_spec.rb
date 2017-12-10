require 'rails_helper'

RSpec.describe "pp_parkingpasses/edit", type: :view do
  before(:each) do
    @pp_parkingpass = assign(:pp_parkingpass, PpParkingpass.create!(
      :en_name => "MyString",
      :parking_pass => "MyString",
      :dept => "MyString",
      :company => "MyString",
      :grouping => "MyString",
      :estatus => "MyString",
      :supervisor => "MyString",
      :en_clock => "MyString"
    ))
  end

  it "renders the edit pp_parkingpass form" do
    render

    assert_select "form[action=?][method=?]", pp_parkingpass_path(@pp_parkingpass), "post" do

      assert_select "input#pp_parkingpass_en_name[name=?]", "pp_parkingpass[en_name]"

      assert_select "input#pp_parkingpass_parking_pass[name=?]", "pp_parkingpass[parking_pass]"

      assert_select "input#pp_parkingpass_dept[name=?]", "pp_parkingpass[dept]"

      assert_select "input#pp_parkingpass_company[name=?]", "pp_parkingpass[company]"

      assert_select "input#pp_parkingpass_grouping[name=?]", "pp_parkingpass[grouping]"

      assert_select "input#pp_parkingpass_estatus[name=?]", "pp_parkingpass[estatus]"

      assert_select "input#pp_parkingpass_supervisor[name=?]", "pp_parkingpass[supervisor]"

      assert_select "input#pp_parkingpass_en_clock[name=?]", "pp_parkingpass[en_clock]"
    end
  end
end
