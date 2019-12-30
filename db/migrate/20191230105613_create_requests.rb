class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :sender_name
      t.string :sender_phone
      t.string :sender_email
      t.string :sender_address
      t.string :card_name

      t.timestamps
    end
  end
end
