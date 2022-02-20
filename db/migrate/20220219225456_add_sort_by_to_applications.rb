class AddSortByToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :sort_by, :string, :default => "date_newest"
  end
end
