json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password, :isActive, :timeCreated
  json.url user_url(user, format: :json)
end
