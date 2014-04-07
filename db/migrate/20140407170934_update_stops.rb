class UpdateStops < ActiveRecord::Migration
  def change
    remove_column :stops, :lines_id, :integer
    remove_column :stops, :stations_id, :integer

    add_column :stops, :line_id, :integer
    add_column :stops, :station_id, :integer
  end
end
