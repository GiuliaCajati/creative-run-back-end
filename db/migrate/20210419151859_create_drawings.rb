class CreateDrawings < ActiveRecord::Migration[6.1]
  def change
    create_table :drawings do |t|
      t.string :name
      t.string :category
      t.string :city
      t.decimal :miles, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
