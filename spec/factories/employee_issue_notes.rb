FactoryGirl.define do
  factory :employee_issue_note do
    issue "MyText"
    employee nil
    name_if_not "MyString"
    date_if_not_today "2020-06-26"
    comment ""
    user nil
  end
end
