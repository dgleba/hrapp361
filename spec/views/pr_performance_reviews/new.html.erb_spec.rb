require 'rails_helper'

RSpec.describe "pr_performance_reviews/new", type: :view do
  before(:each) do
    assign(:pr_performance_review, PrPerformanceReview.new(
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
      :supervisor_approval => "MyString",
      :hr_manager_approval => "MyString",
      :dept_manager_approval => "MyString",
      :sort_order => 1,
      :active_status => ""
    ))
  end

  it "renders new pr_performance_review form" do
    render

    assert_select "form[action=?][method=?]", pr_performance_reviews_path, "post" do

      assert_select "textarea#pr_performance_review_assigned_to_reviewer[name=?]", "pr_performance_review[assigned_to_reviewer]"

      assert_select "input#pr_performance_review_employee_id[name=?]", "pr_performance_review[employee_id]"

      assert_select "textarea#pr_performance_review_strengths[name=?]", "pr_performance_review[strengths]"

      assert_select "textarea#pr_performance_review_opportunities[name=?]", "pr_performance_review[opportunities]"

      assert_select "textarea#pr_performance_review_development_growth[name=?]", "pr_performance_review[development_growth]"

      assert_select "textarea#pr_performance_review_hr_comment[name=?]", "pr_performance_review[hr_comment]"

      assert_select "textarea#pr_performance_review_employee_comment[name=?]", "pr_performance_review[employee_comment]"

      assert_select "textarea#pr_performance_review_sigpad_employee[name=?]", "pr_performance_review[sigpad_employee]"

      assert_select "textarea#pr_performance_review_sigpad_supervisor[name=?]", "pr_performance_review[sigpad_supervisor]"

      assert_select "textarea#pr_performance_review_sigpad_hr[name=?]", "pr_performance_review[sigpad_hr]"

      assert_select "input#pr_performance_review_supervisor_approval[name=?]", "pr_performance_review[supervisor_approval]"

      assert_select "input#pr_performance_review_hr_manager_approval[name=?]", "pr_performance_review[hr_manager_approval]"

      assert_select "input#pr_performance_review_dept_manager_approval[name=?]", "pr_performance_review[dept_manager_approval]"

      assert_select "input#pr_performance_review_sort_order[name=?]", "pr_performance_review[sort_order]"

      assert_select "input#pr_performance_review_active_status[name=?]", "pr_performance_review[active_status]"
    end
  end
end
