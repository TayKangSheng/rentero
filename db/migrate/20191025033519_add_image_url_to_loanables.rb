class AddImageUrlToLoanables < ActiveRecord::Migration[6.0]
  def change
    add_column :loanables, :url, :string, default: "http://www.diagonalthoughts.com/wp-content/uploads/2009/09/standard_gauge_-_morgan_fisher-1a_1.jpg"
  end
end
