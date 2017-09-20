class DeleteEducationToPackers < ActiveRecord::Migration[5.0]
  def change
    remove_column :packers, :education
  end
end
