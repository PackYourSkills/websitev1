class AddWorkingPlaceInfoToCrews < ActiveRecord::Migration[5.0]
  def change
    add_column :crews, :description_working_place, :text
    add_column :crews, :city_working_place_working_place, :string
    add_column :crews, :country_working_place, :string
    add_column :crews, :address_working_place, :string
    add_column :crews, :zip_code_working_place, :string
    add_column :crews, :closest_metro_working_place, :string
  end
end
