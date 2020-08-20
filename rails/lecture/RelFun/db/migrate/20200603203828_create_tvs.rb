class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|
      t.integer :size
      t.string :model
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
