class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :time, {ampm: true}
      t.references :course, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true
      t.timestamps
    end
  end
end
