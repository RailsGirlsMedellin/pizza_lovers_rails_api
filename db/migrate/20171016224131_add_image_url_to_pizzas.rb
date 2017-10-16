class AddImageUrlToPizzas < ActiveRecord::Migration[5.1]
  def change
    add_column :pizzas, :image_url, :string
  end
end
