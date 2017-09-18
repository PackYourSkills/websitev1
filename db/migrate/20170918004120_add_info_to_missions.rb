class AddInfoToMissions < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :nb_min_to_center, :string
    add_column :missions, :kind_of_hosting, :string
  end
end
