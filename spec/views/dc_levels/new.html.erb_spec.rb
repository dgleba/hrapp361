require 'rails_helper'

RSpec.describe "dc_levels/new", type: :view do
  before(:each) do
    assign(:dc_level, DcLevel.new(
      :name => "MyString",
      :active_status => 1,
      :sort_order => 1,
      :comment => "MyString"
    ))
  end

  it "renders new dc_level form" do
    render

    assert_select "form[action=?][method=?]", dc_levels_path, "post" do

      assert_select "input#dc_level_name[name=?]", "dc_level[name]"

      assert_select "input#dc_level_active_status[name=?]", "dc_level[active_status]"

      assert_select "input#dc_level_sort_order[name=?]", "dc_level[sort_order]"

      assert_select "input#dc_level_comment[name=?]", "dc_level[comment]"
    end
  end
end
