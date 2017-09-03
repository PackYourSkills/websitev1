class CreateCrews < ActiveRecord::Migration[5.0]
  def change
    create_table :crews do |t|
      t.string :name
      t.string :mission
      t.text :description
      t.date :creation_date

      t.integer :nb_collaborators
      t.integer :average_age
      t.integer :percentage_women
      t.text :team_description
      t.integer :percentage_english

      t.string :value1
      t.string :value2
      t.string :value3
      t.string :quote
      t.string :quote_author

      t.string :city
      t.string :country
      t.string :address
      t.string :zip_code

      t.string :phone
      t.string :skype

      t.string :twitter
      t.string :facebook
      t.string :instagram
      t.string :website

      t.boolean :newsletter
      t.timestamps
    end
  end
end
