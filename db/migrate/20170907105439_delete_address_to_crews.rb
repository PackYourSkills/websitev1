class DeleteAddressToCrews < ActiveRecord::Migration[5.0]
  def change
    remove_column :crews, :city
    remove_column :crews, :country
    remove_column :crews, :address
    remove_column :crews, :zip_code
  end
end
