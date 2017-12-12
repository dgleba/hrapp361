FactoryGirl.define do
  factory :dc_discipline do
    title "MyString"
    date_discipline "2017-12-10"
    employee nil
    discipline_by "MyString"
    dc_level nil
    dc_stream nil
    infraction_description "MyText"
    dc_action "MyText"
    dc_comment "MyText"
    output "MyText"
    sort_order 1
    active_status 1
  end
end
