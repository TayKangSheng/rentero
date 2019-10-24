require 'rails_helper'

RSpec.describe "loanables/new", type: :view do
  before(:each) do
    assign(:loanable, Loanable.new(
      :title => "MyString",
      :description => "MyText",
      :location => "MyString",
      :contact => "MyString"
    ))
  end

  it "renders new loanable form" do
    render

    assert_select "form[action=?][method=?]", loanables_path, "post" do

      assert_select "input[name=?]", "loanable[title]"

      assert_select "textarea[name=?]", "loanable[description]"

      assert_select "input[name=?]", "loanable[location]"

      assert_select "input[name=?]", "loanable[contact]"
    end
  end
end
