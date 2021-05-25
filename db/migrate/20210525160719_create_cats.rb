class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.boolean :claimed, default: false
      t.string :color, null: false
      t.string :variant
      t.text :description
      t.integer :number_of_legs, default: 4

      t.timestamps
    end
  end
end
