class LoanablesController < ApplicationController
  before_action :authenticate_user
  before_action :set_loanable, only: [:show]

  def index
    @loanables = Loanable
      .includes(:loan_contracts)
      .where("loanables.end >= ?", Time.zone.now)
      .where.not("loanables.user_id": current_user.id)
      .reject { |loanable| loanable.loan_contracts.count > 0 }
  end

  def show
    @loan_contract = @loanable.loan_contracts.new(start: Time.zone.now, end: @loanable.end)
  end

  private
    def set_loanable
      @loanable = Loanable.find(params[:id])
    end
end
