class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.references :owner_id
      t.string :comment
      t.float :rate
      t.references :advertisements_id

      t.timestamps
    end
  end
end
