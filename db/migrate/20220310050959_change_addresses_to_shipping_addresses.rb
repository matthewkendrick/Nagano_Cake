class ChangeAddressesToShippingAddresses < ActiveRecord::Migration[6.1]
  def change
    rename_table :addresses, :shipping_addresses
  end
end
