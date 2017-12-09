require 'rails_helper'

RSpec.describe "dc_streams/new", type: :view do
  before(:each) do
    assign(:dc_stream, DcStream.new(
      :name => "MyString",
      :active_status => 1,
      :sort_order => 1,
      :comment => "MyString"
    ))
  end

  it "renders new dc_stream form" do
    render

    assert_select "form[action=?][method=?]", dc_streams_path, "post" do

      assert_select "input#dc_stream_name[name=?]", "dc_stream[name]"

      assert_select "input#dc_stream_active_status[name=?]", "dc_stream[active_status]"

      assert_select "input#dc_stream_sort_order[name=?]", "dc_stream[sort_order]"

      assert_select "input#dc_stream_comment[name=?]", "dc_stream[comment]"
    end
  end
end
