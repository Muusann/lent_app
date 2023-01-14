require 'rails_helper'

RSpec.describe "terminals/show", type: :view do
  before(:each) do
    @terminal = assign(:terminal, Terminal.create!(
      name: "Name",
      num: 2,
      os: "Os",
      remark: "Remark",
      place_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Os/)
    expect(rendered).to match(/Remark/)
    expect(rendered).to match(/3/)
  end
end
