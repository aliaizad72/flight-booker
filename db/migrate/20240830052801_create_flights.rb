class CreateFlights < ActiveRecord::Migration[7.2]
  def change
    create_table :flights do |t|
      t.references :departure_id, null: false, foreign_key: { to_table: :airports }
      t.references :arrival_id, null: false, foreign_key: { to_table: :airports }

      t.timestamps
    end
  end
end
