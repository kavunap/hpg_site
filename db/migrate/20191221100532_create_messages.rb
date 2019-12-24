class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :sender_names
      t.string :sender_email
      t.text :message

      t.timestamps
    end
  end
end
