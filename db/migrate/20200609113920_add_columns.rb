class AddColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :NID, :bigint, limit: 16
    add_reference :requests, :user, foreign_key: true
    add_column :requests, :category, :integer
    add_column :requests, :image, :string
    add_column :requests, :status, :string
  end
end
