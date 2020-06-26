require 'rails_helper'

RSpec.describe "employee_issue_notes/index", type: :view do
  before(:each) do
    assign(:employee_issue_notes, [
      EmployeeIssueNote.create!(
        :issue => "MyText",
        :employee => nil,
        :name_if_not => "Name If Not",
        :date_if_not_today => "Date If Not Today",
        :user => nil
      ),
      EmployeeIssueNote.create!(
        :issue => "MyText",
        :employee => nil,
        :name_if_not => "Name If Not",
        :date_if_not_today => "Date If Not Today",
        :user => nil
      )
    ])
  end

  it "renders a list of employee_issue_notes" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name If Not".to_s, :count => 2
    assert_select "tr>td", :text => "Date If Not Today".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
