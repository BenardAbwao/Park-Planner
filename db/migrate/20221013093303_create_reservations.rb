class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :park_id
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, foreign_key: true
      t.references :campsite, foreign_key: true

      t.timestamps
    end
  end
end
