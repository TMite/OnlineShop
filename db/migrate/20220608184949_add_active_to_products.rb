class AddActiveToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :active, :boolean
  end
end
