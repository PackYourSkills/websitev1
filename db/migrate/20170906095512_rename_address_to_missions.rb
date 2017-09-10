class RenameAddressToMissions < ActiveRecord::Migration[5.0]
  def change
    rename_column :missions, :city_working_place_hosting_place, :city_hosting_place
  end
end
