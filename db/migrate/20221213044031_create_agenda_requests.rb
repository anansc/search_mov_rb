class CreateAgendaRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :agenda_requests do |t|

      t.timestamps
    end
  end
end
