class CreateInterestTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :interest_types do |t|
      t.string :name
      t.boolean :customized
      t.integer :days

      t.timestamps
    end
  end
end
