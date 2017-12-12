require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :name => "Name",
        :clock => "Clock",
        :active_status => 2,
        :sort => 3
      ),
      Employee.create!(
        :name => "Name",
        :clock => "Clock",
        :active_status => 2,
        :sort => 3
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Clock".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
