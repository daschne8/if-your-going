class CreateOccupantGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :occupant_goods do |t|
      t.references :occupant, foreign_key: true
      t.references :good, foreign_key: true

      t.timestamps
    end
  end
end
