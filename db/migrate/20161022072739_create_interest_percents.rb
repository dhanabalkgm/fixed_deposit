class CreateInterestPercents < ActiveRecord::Migration[5.0]
  def change
    create_table :interest_percents do |t|
      t.float :number

      t.timestamps
    end
  end
end
