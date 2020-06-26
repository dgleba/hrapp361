require 'rails_helper'

RSpec.describe "at_employee_notes/show", type: :view do
  before(:each) do
    @at_employee_note = assign(:at_employee_note, AtEmployeeNote.create!(
      :name_if_not => "Name If Not",
      :employee => nil,
      :issue => "Issue",
      :date_if_not_today => "Date If Not Today"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name If Not/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Issue/)
    expect(rendered).to match(/Date If Not Today/)
  end
end
