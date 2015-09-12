class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
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
      t.timestamps null: false
    end
  end
end
