class CreateOnlineRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :online_requests do |t|
      t.string :customer_name
      t.string :customer_email
      t.string :customer_phone_number
      t.string :subject
      t.text :message
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
