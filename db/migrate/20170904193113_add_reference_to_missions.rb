class AddReferenceToMissions < ActiveRecord::Migration[5.0]
  def change
    add_reference :missions, :crew, foreign_key: true
  end
end
