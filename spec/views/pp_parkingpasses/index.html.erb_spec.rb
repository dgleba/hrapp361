require 'rails_helper'

RSpec.describe "pp_parkingpasses/index", type: :view do
  before(:each) do
    assign(:pp_parkingpasses, [
      PpParkingpass.create!(
        :en_name => "En Name",
        :parking_pass => "Parking Pass",
        :dept => "Dept",
        :company => "Company",
        :grouping => "Grouping",
        :estatus => "Estatus",
        :supervisor => "Supervisor",
        :en_clock => "En Clock"
      ),
      PpParkingpass.create!(
        :en_name => "En Name",
        :parking_pass => "Parking Pass",
        :dept => "Dept",
        :company => "Company",
        :grouping => "Grouping",
        :estatus => "Estatus",
        :supervisor => "Supervisor",
        :en_clock => "En Clock"
      )
    ])
  end

  it "renders a list of pp_parkingpasses" do
    render
    assert_select "tr>td", :text => "En Name".to_s, :count => 2
    assert_select "tr>td", :text => "Parking Pass".to_s, :count => 2
    assert_select "tr>td", :text => "Dept".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Grouping".to_s, :count => 2
    assert_select "tr>td", :text => "Estatus".to_s, :count => 2
    assert_select "tr>td", :text => "Supervisor".to_s, :count => 2
    assert_select "tr>td", :text => "En Clock".to_s, :count => 2
  end
end
