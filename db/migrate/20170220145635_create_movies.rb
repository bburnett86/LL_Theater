class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :name, null: false
      t.text :pic_url, default: "no_image.png"
      t.integer :hours, null: false
      t.integer :minutes, null: false
      t.text :starring, null: false
      t.text :tagline, null: false
      t.string :plot, null: false

      t.timestamps null: false
    end
  end
end