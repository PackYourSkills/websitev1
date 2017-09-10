class RenameSimpleAddressToMissions < ActiveRecord::Migration[5.0]
  def change
    rename_column :missions, :city_hosting_place, :city
    rename_column :missions, :country_hosting_place, :country
    rename_column :missions, :address_hosting_place, :address
    rename_column :missions, :zip_code_hosting_place, :zip_code
  end
end
