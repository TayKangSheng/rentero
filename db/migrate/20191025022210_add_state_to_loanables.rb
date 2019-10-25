class AddStateToLoanables < ActiveRecord::Migration[6.0]
  def change
    add_column :loanables, :state, :string, default: "waiting for collection"
  end
end
