json.extract! v_owner_profile, :id, :first_name, :last_name, :email, :contact_number, :about, :created_at, :updated_at
json.url v_owner_profile_url(v_owner_profile, format: :json)