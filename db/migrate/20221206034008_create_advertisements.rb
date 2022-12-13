class CreateAdvertisements < ActiveRecord::Migration[7.0]
  def change
    create_table :advertisements do |t|
      t.references :owner_id
      t.references :property_id
      t.integer :advertisements_type
      t.date :init_rent_period
      t.date :end_rent_period
      t.references :rating_id

      t.timestamps
    end
  end
end
