class ChangeDepArrColName < ActiveRecord::Migration[7.2]
  def change
    rename_column :flights, :departure_id_id, :departure_id
    rename_column :flights, :arrival_id_id, :arrival_id
  end
end
