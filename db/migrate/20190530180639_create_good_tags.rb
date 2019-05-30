class CreateGoodTags < ActiveRecord::Migration[5.2]
  def change
    create_table :good_tags do |t|
      t.references :tag, foreign_key: true
      t.references :good, foreign_key: true

      t.timestamps
    end
  end
end
