class CreateLoanables < ActiveRecord::Migration[6.0]
  def change
    create_table :loanables do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :contact
      t.datetime :end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
