require 'rails_helper'

RSpec.describe "dc_levels/show", type: :view do
  before(:each) do
    @dc_level = assign(:dc_level, DcLevel.create!(
      :name => "Name",
      :active_status => 2,
      :sort_order => 3,
      :comment => "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Comment/)
  end
end
