class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.string :field_value
      t.timestamps null: false
      t.references :record, foreign_key: true
      t.references :field, foreign_key: true
    end
  end
end
