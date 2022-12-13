class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.references :user_locator_id
      t.references :user_owner_id
      t.string :chat

      t.timestamps
    end
  end
end
