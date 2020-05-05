class CreateGauges < ActiveRecord::Migration[6.0]
  def change
    create_table :gauges do |t|
      t.string :location
      t.float :flood_stage
      t.float :water_level
      t.float :water_flow

      t.timestamps
    end
  end
end
