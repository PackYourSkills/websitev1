class AddInfoToPackers < ActiveRecord::Migration[5.0]
  def change
    add_column :packers, :skills, :text
    add_column :packers, :education, :text
    add_column :packers, :experience, :text
  end
end
