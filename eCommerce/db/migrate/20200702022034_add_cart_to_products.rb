class AddCartToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :cart, index: true, foreign_key: true
  end
end
