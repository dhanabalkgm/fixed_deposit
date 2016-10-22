class CreateInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |t|
      t.float :amount
      t.references :deposit, foreign_key: true
      t.integer :status
      t.references :settled_through, foreign_key: true
      t.datetime :settled_on
      t.string :comments

      t.timestamps
    end
  end
end
