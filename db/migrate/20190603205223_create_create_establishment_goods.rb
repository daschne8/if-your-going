class CreateCreateEstablishmentGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :create_establishment_goods do |t|
      t.references :establishment, foreign_key: true
      t.references :good, foreign_key: true

      t.timestamps
    end
  end
end
