class ChangeTimeToDateTime < ActiveRecord::Migration[7.2]
  def change
    change_column :flights, :date, :datetime
  end
end
