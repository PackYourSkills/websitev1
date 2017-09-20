class ChangeInfoToPackers < ActiveRecord::Migration[5.0]
  def change
    remove_column :packers, :age
    add_column :packers, :date_of_birth, :date
    add_column :packers, :level_french, :string
    add_column :packers, :level_english, :string
    add_column :packers, :other_languages, :string
  end
end
