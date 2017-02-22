class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.float :price, null: false, limit: 4
      t.datetime :start, null: false
      t.datetime :finish, null: false
      t.references :auditorium, null: false
      t.references :movie, null: false

      t.timestamps null: false
    end
  end
end
