class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :position
      t.timestamps null: false
      t.references :application, foreign_key: true
    end
  end
end
