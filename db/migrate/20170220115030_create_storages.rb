class CreateStorages < ActiveRecord::Migration[5.0]
  def change
    create_table :storages do |t|
      t.string :title
      t.integer :size
      t.text :description

      t.timestamps
    end
  end
end
