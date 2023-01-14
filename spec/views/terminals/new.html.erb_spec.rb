require 'rails_helper'

RSpec.describe "terminals/new", type: :view do
  before(:each) do
    assign(:terminal, Terminal.new(
      name: "MyString",
      num: 1,
      os: "MyString",
      remark: "MyString",
      place_id: 1
    ))
  end

  it "renders new terminal form" do
    render

    assert_select "form[action=?][method=?]", terminals_path, "post" do

      assert_select "input[name=?]", "terminal[name]"

      assert_select "input[name=?]", "terminal[num]"

      assert_select "input[name=?]", "terminal[os]"

      assert_select "input[name=?]", "terminal[remark]"

      assert_select "input[name=?]", "terminal[place_id]"
    end
  end
end
