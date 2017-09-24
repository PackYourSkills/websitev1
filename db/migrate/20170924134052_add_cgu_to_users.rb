class AddCguToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cgu, :boolean
  end
end
