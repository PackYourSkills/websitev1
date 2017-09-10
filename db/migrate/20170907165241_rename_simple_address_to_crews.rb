class RenameSimpleAddressToCrews < ActiveRecord::Migration[5.0]
  def change
    rename_column :crews, :city_working_place, :city
    rename_column :crews, :country_working_place, :country
    rename_column :crews, :address_working_place, :address
    rename_column :crews, :zip_code_working_place, :zip_code
  end
end
