class AddInfoToConnections < ActiveRecord::Migration[5.0]
  def change
    add_column :connections, :motivation, :text
    add_column :connections, :status, :string
  end
end
