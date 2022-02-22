class ChangeDefaultFieldType < ActiveRecord::Migration
  def change
    change_column_default :fields, :field_type, "Text"
  end
end
