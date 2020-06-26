FactoryGirl.define do
  factory :employee_issue_note do
    issue "MyText"
    employee nil
    name_if_not "MyString"
    date_of_issue "2020-06-26"
    comment "MyText"
    user nil
  end
end
