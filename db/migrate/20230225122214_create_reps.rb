class CreateReps < ActiveRecord::Migration[7.0]
  def change
    create_table :reps do |t|
      t.string :ward
      t.string :punit
      t.integer :totalreg
      t.integer :validvote
      t.integer :invalidvote
      t.integer :pdp
      t.integer :apc
      t.integer :nnpp
      t.integer :prp
      t.integer :lp
      t.integer :zlp
      t.integer :others
      t.string :pic
      t.integer :user_id

      t.timestamps
    end
  end
end
