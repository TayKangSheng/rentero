require 'rails_helper'

RSpec.describe "loanables/show", type: :view do
  before(:each) do
    @loanable = assign(:loanable, Loanable.create!(
      :title => "Title",
      :description => "MyText",
      :location => "Location",
      :contact => "Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Contact/)
  end
end
