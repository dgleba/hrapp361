require 'rails_helper'

RSpec.describe "stf_employees/index", type: :view do
  before(:each) do
    assign(:stf_employees, [
      StfEmployee.create!(
        :clocknum => "Clocknum",
        :name => "Name",
        :active_status => 2,
        :sort => 3,
        :comment => "Comment"
      ),
      StfEmployee.create!(
        :clocknum => "Clocknum",
        :name => "Name",
        :active_status => 2,
        :sort => 3,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of stf_employees" do
    render
    assert_select "tr>td", :text => "Clocknum".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
