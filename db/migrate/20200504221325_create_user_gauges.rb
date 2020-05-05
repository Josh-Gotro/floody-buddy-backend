class CreateUserGauges < ActiveRecord::Migration[6.0]
  def change
    create_table :user_gauges do |t|
      t.references :gauge, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
