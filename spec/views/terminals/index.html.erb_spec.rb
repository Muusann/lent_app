require 'rails_helper'

RSpec.describe "terminals/index", type: :view do
  before(:each) do
    assign(:terminals, [
      Terminal.create!(
        name: "Name",
        num: 2,
        os: "Os",
        remark: "Remark",
        place_id: 3
      ),
      Terminal.create!(
        name: "Name",
        num: 2,
        os: "Os",
        remark: "Remark",
        place_id: 3
      )
    ])
  end

  it "renders a list of terminals" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Os".to_s, count: 2
    assert_select "tr>td", text: "Remark".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
