class ChangeCreationDateToCrews < ActiveRecord::Migration[5.0]
  def change
    remove_column :crews, :creation_date
    add_column :crews, :creation_date, :string
  end
end
