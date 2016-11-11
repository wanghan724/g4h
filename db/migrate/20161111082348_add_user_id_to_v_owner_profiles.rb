class AddUserIdToVOwnerProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :v_owner_profiles, :user_id, :integer
  end
end
