class CreateDeposits < ActiveRecord::Migration[5.0]
  def change
    create_table :deposits do |t|
      t.integer :amount
      t.date :deposited_on
      t.references :depositer, foreign_key: true
      t.references :interest_type, foreign_key: true
      t.references :interest_percent, foreign_key: true

      t.timestamps
    end
  end
end
