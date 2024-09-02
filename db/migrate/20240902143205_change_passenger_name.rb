class ChangePassengerName < ActiveRecord::Migration[7.2]
  def change
    rename_table :passangers, :passengers
  end
end
