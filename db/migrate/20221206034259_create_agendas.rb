class CreateAgendas < ActiveRecord::Migration[7.0]
  def change
    create_table :agendas do |t|
      t.date :init_date
      t.date :end_date
      t.references :property_id

      t.timestamps
    end
  end
end
