class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.text :first_name, null: false
      t.text :last_name, null: false
      t.text :email, null: false
      t.integer :cc_info, null: false
      t.date :cc_exp_date, null: false
      t.float :sale_price, null: false, limit: 4
      t.references :showtime, null: false
      t.references :movie
      t.references :seller, null: false

      t.timestamps null: false
    end
  end
end
