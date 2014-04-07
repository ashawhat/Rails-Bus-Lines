class CreateStop < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.column :lines_id, :integer
      t.column :stations_id, :integer

      t.timestamps
    end
  end
end
