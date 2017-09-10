class AddCoordinatesToPackers < ActiveRecord::Migration[5.0]
  def change
    add_column :packers, :latitude, :float
    add_column :packers, :longitude, :float
  end
end
