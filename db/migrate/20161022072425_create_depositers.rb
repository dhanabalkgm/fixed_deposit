class CreateDepositers < ActiveRecord::Migration[5.0]
  def change
    create_table :depositers do |t|
      t.string :name
      t.string :address
      t.string :mobile
      t.text :about

      t.timestamps
    end
  end
end
