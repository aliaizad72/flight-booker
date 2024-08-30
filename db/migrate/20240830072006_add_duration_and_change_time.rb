class AddDurationAndChangeTime < ActiveRecord::Migration[7.2]
  def change
    change_column :flights, :datetime, :time
    add_column :flights, :duration, :integer
  end
end
