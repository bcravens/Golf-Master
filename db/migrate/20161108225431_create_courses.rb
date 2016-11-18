class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :img_url
      t.string :name
      t.string :location
      t.integer :num_holes
      t.integer :par
      t.integer :yardage
      t.integer :rating
      t.timestamps null: false
    end
  end
end
