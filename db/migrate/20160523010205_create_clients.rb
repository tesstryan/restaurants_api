class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :access_token
      t.string :company

      t.timestamps null: false
    end
  end
end
