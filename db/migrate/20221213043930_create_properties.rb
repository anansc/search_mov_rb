class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :owner_id
      t.integer :properties_type
      t.integer :rooms
      t.integer :bathroom
      t.string :size
      t.boolean :furnished
      t.string :sell_price
      t.string :rent_price
      t.string :state
      t.string :city
      t.string :bairro
      t.string :cep
      t.string :number

      t.timestamps
    end
  end
end
