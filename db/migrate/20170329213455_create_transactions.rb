class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :car_type
      t.text :price
      t.boolean :first_visit
      t.boolean :bed_down
      t.boolean :mud_in_bed

      t.timestamps null: false
    end
  end
end
