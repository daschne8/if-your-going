class CreateEstablishmentOccupants < ActiveRecord::Migration[5.2]
  def change
    create_table :establishment_occupants do |t|
      t.references :establishment, foreign_key: true
      t.references :occupant, foreign_key: true

      t.timestamps
    end
  end
end
