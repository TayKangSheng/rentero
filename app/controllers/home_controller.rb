class HomeController < ApplicationController
  def index
    if current_user
      redirect_to loanables_path
    else
      render :index, locals: {}
    end
  end
end
