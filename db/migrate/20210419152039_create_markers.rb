class CreateMarkers < ActiveRecord::Migration[6.1]
  def change
    create_table :markers do |t|
      t.decimal :longitude, precision: 10, scale: 6 
      t.decimal :latitude, precision: 10, scale: 6 
      t.integer :place
      # t.decimal :distance_from_prev, :precision => 8, :scale => 2
      t.integer :drawing_id

      t.timestamps
    end
  end
end
