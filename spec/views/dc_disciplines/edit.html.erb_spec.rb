require 'rails_helper'

RSpec.describe "dc_disciplines/edit", type: :view do
  before(:each) do
    @dc_discipline = assign(:dc_discipline, DcDiscipline.create!(
      :StfEmployee => nil,
      :DisciplineBy => "MyString",
      :DcLevel => nil,
      :DcStream => nil,
      :InfractionDescription => "MyText",
      :DcAction => "MyText",
      :DcComment => "MyText",
      :output => "MyText",
      :sort_order => 1,
      :active_status => 1
    ))
  end

  it "renders the edit dc_discipline form" do
    render

    assert_select "form[action=?][method=?]", dc_discipline_path(@dc_discipline), "post" do

      assert_select "input#dc_discipline_StfEmployee_id[name=?]", "dc_discipline[StfEmployee_id]"

      assert_select "input#dc_discipline_DisciplineBy[name=?]", "dc_discipline[DisciplineBy]"

      assert_select "input#dc_discipline_DcLevel_id[name=?]", "dc_discipline[DcLevel_id]"

      assert_select "input#dc_discipline_DcStream_id[name=?]", "dc_discipline[DcStream_id]"

      assert_select "textarea#dc_discipline_InfractionDescription[name=?]", "dc_discipline[InfractionDescription]"

      assert_select "textarea#dc_discipline_DcAction[name=?]", "dc_discipline[DcAction]"

      assert_select "textarea#dc_discipline_DcComment[name=?]", "dc_discipline[DcComment]"

      assert_select "textarea#dc_discipline_output[name=?]", "dc_discipline[output]"

      assert_select "input#dc_discipline_sort_order[name=?]", "dc_discipline[sort_order]"

      assert_select "input#dc_discipline_active_status[name=?]", "dc_discipline[active_status]"
    end
  end
end
