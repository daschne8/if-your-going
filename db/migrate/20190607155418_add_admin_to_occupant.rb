class AddAdminToOccupant < ActiveRecord::Migration[5.2]
  def change
    add_column :occupants, :admin, :boolean, default: false
  end
end
