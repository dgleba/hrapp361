require 'rails_helper'

RSpec.describe "dc_disciplines/show", type: :view do
  before(:each) do
    @dc_discipline = assign(:dc_discipline, DcDiscipline.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Discipline By/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
