class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :ingredients
      t.string :heat_level
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
