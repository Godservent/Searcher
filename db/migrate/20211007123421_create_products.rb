class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :current_price
      t.string :previous_price
      t.string :product_link
      t.string :image_url

      t.timestamps
    end
  end
end
