class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :position
      t.timestamps null: false
    end
  end
end
