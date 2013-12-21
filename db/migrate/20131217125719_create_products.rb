class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :rating
      t.string :prodcuer
      t.date :releasedate
      t.decimal :price
      t.string :photo

      t.timestamps
    end
  end
end
