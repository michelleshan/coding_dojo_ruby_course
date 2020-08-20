class AddBdayToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bday, :date
    add_column :users, :email, :string
  end
end
