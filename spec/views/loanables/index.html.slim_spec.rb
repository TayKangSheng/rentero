require 'rails_helper'

RSpec.describe "loanables/index", type: :view do
  before(:each) do
    assign(:loanables, [
      Loanable.create!(
        :title => "Title",
        :description => "MyText",
        :location => "Location",
        :contact => "Contact"
      ),
      Loanable.create!(
        :title => "Title",
        :description => "MyText",
        :location => "Location",
        :contact => "Contact"
      )
    ])
  end

  it "renders a list of loanables" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
  end
end
