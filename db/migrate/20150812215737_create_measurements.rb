class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.integer :client_id
      t.string :height
      t.string :weight
      t.string :shoulder
      t.string :chest
      t.string :stomach
      t.string :bicep
      t.string :arm_length
      t.string :sweep
      t.string :waist
      t.string :thigh
      t.string :calf
      t.string :opening
      t.string :vest_chest
      t.string :vest_stomach
      t.string :vest_back_length
      t.string :vest_first_button
      t.timestamps null: false
    end
  end
end
