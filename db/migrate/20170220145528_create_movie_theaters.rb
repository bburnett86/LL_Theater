class CreateMovieTheaters < ActiveRecord::Migration
  def change
    create_table :movie_theaters do |t|
      t.text :name, null: false
      t.references :admin, null: false

      t.timestamps null: false
    end
  end
end
