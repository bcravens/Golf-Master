class CreateHoles < ActiveRecord::Migration[5.0]
  def change
    create_table :holes do |t|
      t.string :img_url
      t.integer :hole_num
      t.integer :par
      t.integer :yardage
      t.references :course, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
