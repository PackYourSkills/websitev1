class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.string :title

      t.text :context
      t.text :description
      t.string :duration
      t.string :skill

      t.text :material

      t.string :referent_first_name
      t.string :referent_last_name
      t.string :referent_role
      t.string :referent_phone
      t.string :referent_email

      t.text :description_working_place
      t.string :city_working_place_working_place
      t.string :country_working_place
      t.string :address_working_place
      t.string :zip_code_working_place
      t.string :closest_metro_working_place

      t.string :host_first_name
      t.string :host_last_name
      t.string :host_role
      t.string :host_phone
      t.string :referent_email

      t.text :description_hosting_place
      t.string :city_working_place_hosting_place
      t.string :country_hosting_place
      t.string :address_hosting_place
      t.string :zip_code_hosting_place
      t.string :closest_metro_hosting_place

      t.string :nb_min_ride

      t.text :other_comment

      t.timestamps
    end
  end
end
