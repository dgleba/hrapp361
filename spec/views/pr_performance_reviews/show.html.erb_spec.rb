require 'rails_helper'

RSpec.describe "pr_performance_reviews/show", type: :view do
  before(:each) do
    @pr_performance_review = assign(:pr_performance_review, PrPerformanceReview.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Supervisor Approval/)
    expect(rendered).to match(/Hr Manager Approval/)
    expect(rendered).to match(/Dept Manager Approval/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
