class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :primary_field
      t.string :secondary_field
      t.string :background_color
      t.string :description
      t.string :font
      t.string :display_theme
      t.string :img_url
      t.string :app_name
      t.timestamps null: false
    end
  end
end
