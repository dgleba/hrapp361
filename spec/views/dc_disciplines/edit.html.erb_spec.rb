require 'rails_helper'

RSpec.describe "dc_disciplines/edit", type: :view do
  before(:each) do
    @dc_discipline = assign(:dc_discipline, DcDiscipline.create!(
      :title => "MyString",
      :employee => nil,
      :discipline_by => "MyString",
      :dc_level => nil,
      :dc_stream => nil,
      :infraction_description => "MyText",
      :dc_action => "MyText",
      :dc_comment => "MyText",
      :output => "MyText",
      :sort_order => 1,
      :active_status => 1
    ))
  end

  it "renders the edit dc_discipline form" do
    render

    assert_select "form[action=?][method=?]", dc_discipline_path(@dc_discipline), "post" do

      assert_select "input#dc_discipline_title[name=?]", "dc_discipline[title]"

      assert_select "input#dc_discipline_employee_id[name=?]", "dc_discipline[employee_id]"

      assert_select "input#dc_discipline_discipline_by[name=?]", "dc_discipline[discipline_by]"

      assert_select "input#dc_discipline_dc_level_id[name=?]", "dc_discipline[dc_level_id]"

      assert_select "input#dc_discipline_dc_stream_id[name=?]", "dc_discipline[dc_stream_id]"

      assert_select "textarea#dc_discipline_infraction_description[name=?]", "dc_discipline[infraction_description]"

      assert_select "textarea#dc_discipline_dc_action[name=?]", "dc_discipline[dc_action]"

      assert_select "textarea#dc_discipline_dc_comment[name=?]", "dc_discipline[dc_comment]"

      assert_select "textarea#dc_discipline_output[name=?]", "dc_discipline[output]"

      assert_select "input#dc_discipline_sort_order[name=?]", "dc_discipline[sort_order]"

      assert_select "input#dc_discipline_active_status[name=?]", "dc_discipline[active_status]"
    end
  end
end
