class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.string :course, null: false
      t.string :time, null: false

      t.timestamps null: false
    end
  end
end
