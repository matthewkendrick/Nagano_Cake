class AddShippingnameToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :shipping_name, :string
  end
end
