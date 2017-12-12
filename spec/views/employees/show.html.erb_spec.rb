require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :name => "Name",
      :clock => "Clock",
      :active_status => 2,
      :sort => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Clock/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
