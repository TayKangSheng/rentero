class Loanable < ApplicationRecord
  belongs_to :user
  has_many :loan_contracts
end
