class CreateAgendaRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :agenda_requests do |t|
      t.references :agenda_id
      t.references :user_id

      t.timestamps
    end
  end
end
