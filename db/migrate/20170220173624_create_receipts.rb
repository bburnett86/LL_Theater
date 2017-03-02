class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.text :name, null: false
      t.text :email, null: false
      t.text :cc_info, null: false
      t.datetime :cc_exp_date, null: false
      t.references :showtime, null: false

      t.timestamps null: false
    end
  end
end
