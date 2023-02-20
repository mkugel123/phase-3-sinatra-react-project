class RemoveFoodsColumnFromServices < ActiveRecord::Migration[6.1]
  def change
    remove_column :services, :foods
  end
end
