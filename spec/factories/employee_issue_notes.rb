FactoryGirl.define do
  factory :employee_issue_note do
    issue "MyText"
    employee nil
    name_if_not "MyString"
    date_if_not_today "MyString"
    user nil
  end
end
