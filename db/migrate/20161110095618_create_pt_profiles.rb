class CreatePtProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :pt_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :qualifications
      t.string :email
      t.integer :contact_number
      t.string :about

      t.timestamps
    end
  end
end
