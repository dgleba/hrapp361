require 'rails_helper'

RSpec.describe "pr_performance_reviews/index", type: :view do
  before(:each) do
    assign(:pr_performance_reviews, [
      PrPerformanceReview.create!(
        :assigned_to_reviewer => "MyText",
        :employee => nil,
        :strengths => "MyText",
        :opportunities => "MyText",
        :development_growth => "MyText",
        :hr_comment => "MyText",
        :employee_comment => "MyText",
        :sigpad_employee => "MyText",
        :sigpad_supervisor => "MyText",
        :sigpad_hr => "MyText",
        :supervisor_approval => "Supervisor Approval",
        :hr_manager_approval => "Hr Manager Approval",
        :dept_manager_approval => "Dept Manager Approval",
        :sort_order => 2,
        :active_status => ""
      ),
      PrPerformanceReview.create!(
        :assigned_to_reviewer => "MyText",
        :employee => nil,
        :strengths => "MyText",
        :opportunities => "MyText",
        :development_growth => "MyText",
        :hr_comment => "MyText",
        :employee_comment => "MyText",
        :sigpad_employee => "MyText",
        :sigpad_supervisor => "MyText",
        :sigpad_hr => "MyText",
        :supervisor_approval => "Supervisor Approval",
        :hr_manager_approval => "Hr Manager Approval",
        :dept_manager_approval => "Dept Manager Approval",
        :sort_order => 2,
        :active_status => ""
      )
    ])
  end

  it "renders a list of pr_performance_reviews" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Supervisor Approval".to_s, :count => 2
    assert_select "tr>td", :text => "Hr Manager Approval".to_s, :count => 2
    assert_select "tr>td", :text => "Dept Manager Approval".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
