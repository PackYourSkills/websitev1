class CreatePackers < ActiveRecord::Migration[5.0]
  def change
    create_table :packers do |t|
      t.string :first_name
      t.string :last_name

      t.string :sexe
      t.integer :age
      t.string :nationality

      t.text :story
      t.string :job

      t.string :value1
      t.string :value2
      t.string :value3
      t.string :quote
      t.string :quote_author

      t.string :city
      t.string :country
      t.string :address
      t.string :zip_code

      t.string :skype
      t.string :phone

      t.string :website
      t.string :cv_link
      t.string :facebook
      t.string :instagram
      t.string :other_link

      t.boolean :newsletter

      t.timestamps
    end
  end
end
