class CreateAuditoria < ActiveRecord::Migration
  def change
    create_table :auditoria do |t|
      t.integer :capacity, null: false
      t.references :movie_theater, null: false

      t.timestamps null: false
    end
  end
end
