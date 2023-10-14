class CreateResourceNames < ActiveRecord::Migration
  def change
    create_table :resource_names do |t|
      t.string :product_name
      t.integer :product_id

      t.timestamps
    end
  end
end
