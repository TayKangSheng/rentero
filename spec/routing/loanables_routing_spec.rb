require "rails_helper"

RSpec.describe LoanablesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/loanables").to route_to("loanables#index")
    end

    it "routes to #new" do
      expect(:get => "/loanables/new").to route_to("loanables#new")
    end

    it "routes to #show" do
      expect(:get => "/loanables/1").to route_to("loanables#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/loanables/1/edit").to route_to("loanables#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/loanables").to route_to("loanables#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/loanables/1").to route_to("loanables#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/loanables/1").to route_to("loanables#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/loanables/1").to route_to("loanables#destroy", :id => "1")
    end
  end
end
