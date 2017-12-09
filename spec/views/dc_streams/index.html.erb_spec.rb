require 'rails_helper'

RSpec.describe "dc_streams/index", type: :view do
  before(:each) do
    assign(:dc_streams, [
      DcStream.create!(
        :name => "Name",
        :active_status => 2,
        :sort_order => 3,
        :comment => "Comment"
      ),
      DcStream.create!(
        :name => "Name",
        :active_status => 2,
        :sort_order => 3,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of dc_streams" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
