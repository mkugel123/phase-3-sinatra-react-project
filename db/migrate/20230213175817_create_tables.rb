class CreateTables < ActiveRecord::Migration[6.1]
  def change
    create_table :tables do |t|
      t.boolean :occupied, default: false
    end
  end
end
