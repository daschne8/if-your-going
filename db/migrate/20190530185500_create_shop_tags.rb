class CreateShopTags < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_tags do |t|
      t.references :shop, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
