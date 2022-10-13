class CreateCampsites < ActiveRecord::Migration[7.0]
  def change
    create_table :campsites do |t|
      t.string :image
      t.string :name
      t.string :location
      t.string :info
      t.references :park, foreign_key: true

      t.timestamps
    end
  end
end
