class CreateTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.string :title
      t.integer :mileage
      t.text :description
      t.boolean :complete
      t.integer :priority

      t.timestamps
    end
  end
end
