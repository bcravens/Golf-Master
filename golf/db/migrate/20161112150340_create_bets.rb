class CreateBets < ActiveRecord::Migration[5.0]
  def change
    create_table :bets do |t|
      t.integer :amount
      t.references :hole, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
    end
  end
end
