class LoanContract < ApplicationRecord
  belongs_to :loanable
  has_one :borrower
end
