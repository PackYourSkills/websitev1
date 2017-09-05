class DeleteWorkingPlaceInfoToMissions < ActiveRecord::Migration[5.0]
  def change
    remove_column :missions, :description_working_place
    remove_column :missions, :city_working_place_working_place
    remove_column :missions, :country_working_place
    remove_column :missions, :address_working_place
    remove_column :missions, :zip_code_working_place
    remove_column :missions, :closest_metro_working_place
  end
end
