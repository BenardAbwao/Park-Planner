class CreateParks < ActiveRecord::Migration[7.0]
  def change
    create_table :parks do |t|
      t.string :image
      t.string :name
      t.string :location
      t.string :info
      t.string :website

      t.timestamps
    end
  end
end
