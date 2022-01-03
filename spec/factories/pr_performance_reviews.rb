FactoryGirl.define do
  factory :pr_performance_review do
    assigned_to_reviewer "MyText"
    employee nil
    review_date "2021-12-12"
    strengths "MyText"
    opportunities "MyText"
    development_growth "MyText"
    hr_comment "MyText"
    employee_comment "MyText"
    sigpad_employee "MyText"
    sigpad_supervisor "MyText"
    sigpad_hr "MyText"
    supervisor_approval "MyString"
    hr_manager_approval "MyString"
    dept_manager_approval "MyString"
    scheduling_date "2021-12-12"
    sort_order 1
    active_status ""
  end
end
