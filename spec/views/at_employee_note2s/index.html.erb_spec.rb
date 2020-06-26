require 'rails_helper'

RSpec.describe "at_employee_note2s/index", type: :view do
  before(:each) do
    assign(:at_employee_note2s, [
      AtEmployeeNote2.create!(
        :name_if_not => "Name If Not",
        :employee => nil,
        :issue => "Issue",
        :date_if_not_today => "Date If Not Today",
        :user => nil
      ),
      AtEmployeeNote2.create!(
        :name_if_not => "Name If Not",
        :employee => nil,
        :issue => "Issue",
        :date_if_not_today => "Date If Not Today",
        :user => nil
      )
    ])
  end

  it "renders a list of at_employee_note2s" do
    render
    assert_select "tr>td", :text => "Name If Not".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Issue".to_s, :count => 2
    assert_select "tr>td", :text => "Date If Not Today".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
