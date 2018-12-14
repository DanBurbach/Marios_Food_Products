class CreateProductsTb < ActiveRecord::Migration[5.2]
  def change
    create_table :products_tb do |t|
      t.column :name, :varchar
      t.column :cost, :int
      t.column :country_of_origin, :varchar

    end
  end
end
