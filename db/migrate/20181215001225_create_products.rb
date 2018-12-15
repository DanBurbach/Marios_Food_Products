class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :name, :string
      t.column :cost, :integer
      t.column :country_of_origin, :text
    end
  end
end
