require 'rails_helper'

RSpec.describe "dc_disciplines/index", type: :view do
  before(:each) do
    assign(:dc_disciplines, [
      DcDiscipline.create!(
        :StfEmployee => nil,
        :DisciplineBy => "Discipline By",
        :DcLevel => nil,
        :DcStream => nil,
        :InfractionDescription => "MyText",
        :DcAction => "MyText",
        :DcComment => "MyText",
        :output => "MyText",
        :sort_order => 2,
        :active_status => 3
      ),
      DcDiscipline.create!(
        :StfEmployee => nil,
        :DisciplineBy => "Discipline By",
        :DcLevel => nil,
        :DcStream => nil,
        :InfractionDescription => "MyText",
        :DcAction => "MyText",
        :DcComment => "MyText",
        :output => "MyText",
        :sort_order => 2,
        :active_status => 3
      )
    ])
  end

  it "renders a list of dc_disciplines" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Discipline By".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
