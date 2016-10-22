class CreateSettledThroughs < ActiveRecord::Migration[5.0]
  def change
    create_table :settled_throughs do |t|
      t.string :name

      t.timestamps
    end
  end
end
