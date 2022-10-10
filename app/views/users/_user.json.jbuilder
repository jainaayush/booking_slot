json.extract! user, :id, :email, :user_id, :full_name, :created_at, :updated_at
json.url user_url(user, format: :json)
