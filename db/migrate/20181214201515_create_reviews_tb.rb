class CreateReviewsTb < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews_tbs do |t|
      t.column :author, :varchar
      t.column :content_body, :varchar
      t.column :rating, :int
      t.column :recommended, :boolean

    end
  end
end
