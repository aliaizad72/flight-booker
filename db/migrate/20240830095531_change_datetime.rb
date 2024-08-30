class ChangeDatetime < ActiveRecord::Migration[7.2]
  def change
    remove_column :flights, :date
    change_column :flights, :datetime, :datetime
  end
end
