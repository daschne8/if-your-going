class AddDescriptionToGoods < ActiveRecord::Migration[5.2]
  def change
    add_column :goods, :description, :string, default: ''
  end
end
