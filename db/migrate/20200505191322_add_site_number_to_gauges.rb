class AddSiteNumberToGauges < ActiveRecord::Migration[6.0]
  def change
    add_column :gauges, :site_number, :integer
  end
end
