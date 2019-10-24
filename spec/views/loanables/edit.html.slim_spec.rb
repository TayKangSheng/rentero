require 'rails_helper'

RSpec.describe "loanables/edit", type: :view do
  before(:each) do
    @loanable = assign(:loanable, Loanable.create!(
      :title => "MyString",
      :description => "MyText",
      :location => "MyString",
      :contact => "MyString"
    ))
  end

  it "renders the edit loanable form" do
    render

    assert_select "form[action=?][method=?]", loanable_path(@loanable), "post" do

      assert_select "input[name=?]", "loanable[title]"

      assert_select "textarea[name=?]", "loanable[description]"

      assert_select "input[name=?]", "loanable[location]"

      assert_select "input[name=?]", "loanable[contact]"
    end
  end
end
