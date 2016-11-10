json.extract! pt_profile, :id, :first_name, :last_name, :age, :gender, :qualifications, :email, :contact_number, :about, :created_at, :updated_at
json.url pt_profile_url(pt_profile, format: :json)