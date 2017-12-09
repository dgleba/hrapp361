FactoryGirl.define do
  factory :dc_discipline do
    StfEmployee nil
    DateDiscipline "2017-12-09"
    DisciplineBy "MyString"
    DcLevel nil
    DcStream nil
    InfractionDescription "MyText"
    DcAction "MyText"
    DcComment "MyText"
    output "MyText"
    sort_order 1
    active_status 1
  end
end
