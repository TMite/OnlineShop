class AddRequiredflavorsToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :required_num, :integer
  end
end
