class RenameAddressToCrews < ActiveRecord::Migration[5.0]
  def change
    rename_column :crews, :city_working_place_working_place, :city_working_place
  end
end
