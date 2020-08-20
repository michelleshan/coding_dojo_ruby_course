class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :pettable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
