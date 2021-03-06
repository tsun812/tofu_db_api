class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :field_name
      t.string :field_type, :default => "string"
      t.timestamps null: false
      t.references :application, foreign_key: true
    end
  end
end
