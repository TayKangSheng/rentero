class Loanables::LoanContractsController < ApplicationController
  before_action :authenticate_user

  def create
    @loan_contract = LoanContract.new(
      loan_contract_params.merge({
        loanable_id: params[:loanable_id],
        borrower_id: current_user.id
      })
    )

    if @loan_contract.save
      redirect_to loanables_path
    else
      flash[:alert] = "something is wrong, try again"
      redirect_to loanable_path(Loanable.find(params[:loanable_id]))
    end
  end

  private

    def loan_contract_params
      params.require(:loan_contract).permit(:start, :end)
    end
end
