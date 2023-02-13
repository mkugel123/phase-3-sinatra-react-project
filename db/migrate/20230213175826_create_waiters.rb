class CreateWaiters < ActiveRecord::Migration[6.1]
  def change
    create_table :waiters do |t|
      t.string :name
      t.float :tips
    end
  end
end
