class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :product_types do |t|
      t.integer :code
      t.string :name
      t.timestamps
    end
  end
end
