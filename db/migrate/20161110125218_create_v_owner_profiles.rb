class CreateVOwnerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :v_owner_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :contact_number
      t.string :about

      t.timestamps
    end
  end
end
