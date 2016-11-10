class CreateClientProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :client_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :address
      t.integer :contact_number
      t.string :photo

      t.timestamps
    end
  end
end
