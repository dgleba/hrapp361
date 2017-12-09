require 'rails_helper'

RSpec.describe "stf_employees/show", type: :view do
  before(:each) do
    @stf_employee = assign(:stf_employee, StfEmployee.create!(
      :clocknum => "Clocknum",
      :name => "Name",
      :active_status => 2,
      :sort => 3,
      :comment => "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Clocknum/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Comment/)
  end
end
