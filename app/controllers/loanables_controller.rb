class LoanablesController < ApplicationController
  before_action :authenticate_user
  before_action :set_loanable, only: [:show]

  def index
    @loanables = Loanable.all - current_user.loanables
  end

  def show

  end

  private
    def set_loanable
      @loanable = Loanable.find(params[:id])
    end
end
