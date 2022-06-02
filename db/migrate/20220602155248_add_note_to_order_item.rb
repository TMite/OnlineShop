class AddNoteToOrderItem < ActiveRecord::Migration[6.1]
  def change
    add_column :order_items, :note, :string
  end
end
