class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.float :tab_total
      t.float :tip
      t.text :foods
      t.integer :waiter_id
      t.integer :table_id

      t.timestamps
    end
  end
end
