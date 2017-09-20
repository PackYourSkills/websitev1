class AddReferenceToConnections < ActiveRecord::Migration[5.0]
  def change
    add_reference :connections, :mission, foreign_key: true
    add_reference :connections, :packer, foreign_key: true
  end
end
