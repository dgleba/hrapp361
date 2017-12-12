require 'rails_helper'

RSpec.describe "pp_parkingpasses/index", type: :view do
  before(:each) do
    assign(:pp_parkingpasses, [
      PpParkingpass.create!(
        :title => "Title",
        :employee => nil,
        :parking_pass => "Parking Pass",
        :dept => "Dept",
        :company => "Company",
        :grouping => "Grouping",
        :en_status => "En Status",
        :supervisor => "Supervisor",
        :en_name => "En Name",
        :en_clock => "En Clock"
      ),
      PpParkingpass.create!(
        :title => "Title",
        :employee => nil,
        :parking_pass => "Parking Pass",
        :dept => "Dept",
        :company => "Company",
        :grouping => "Grouping",
        :en_status => "En Status",
        :supervisor => "Supervisor",
        :en_name => "En Name",
        :en_clock => "En Clock"
      )
    ])
  end

  it "renders a list of pp_parkingpasses" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Parking Pass".to_s, :count => 2
    assert_select "tr>td", :text => "Dept".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Grouping".to_s, :count => 2
    assert_select "tr>td", :text => "En Status".to_s, :count => 2
    assert_select "tr>td", :text => "Supervisor".to_s, :count => 2
    assert_select "tr>td", :text => "En Name".to_s, :count => 2
    assert_select "tr>td", :text => "En Clock".to_s, :count => 2
  end
end
