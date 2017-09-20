class AddCauseToCrews < ActiveRecord::Migration[5.0]
  def change
    add_column :crews, :cause, :string
  end
end
