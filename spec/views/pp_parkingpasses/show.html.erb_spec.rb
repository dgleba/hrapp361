require 'rails_helper'

RSpec.describe "pp_parkingpasses/show", type: :view do
  before(:each) do
    @pp_parkingpass = assign(:pp_parkingpass, PpParkingpass.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Parking Pass/)
    expect(rendered).to match(/Dept/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Grouping/)
    expect(rendered).to match(/En Status/)
    expect(rendered).to match(/Supervisor/)
    expect(rendered).to match(/En Name/)
    expect(rendered).to match(/En Clock/)
  end
end
