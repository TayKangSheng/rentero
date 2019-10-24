require 'rails_helper'

RSpec.describe "Loanables", type: :request do
  describe "GET /loanables" do
    it "works! (now write some real specs)" do
      get loanables_path
      expect(response).to have_http_status(200)
    end
  end
end
