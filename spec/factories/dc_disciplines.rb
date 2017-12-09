FactoryGirl.define do
  factory :dc_discipline do
    date_discipline "2017-12-09"
    stf_employee nil
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
