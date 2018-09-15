class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productCode
      t.text :productName
      t.text :productSize
      t.text :productPrice

      t.string :categoryCode
    end
  end
end
