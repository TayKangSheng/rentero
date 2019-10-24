class CreateLoanContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :loan_contracts do |t|
      t.datetime :start, null: false
      t.datetime :end, null: false
      t.references :loanable, null: false, foreign_key: true
      t.references :borrower, null: false, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
