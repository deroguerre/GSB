json.array!(@users) do |user|
  json.extract! user, :login, :password, :email, :firstname, :lastname, :address, :zipcode, :city, :status
  json.url user_url(user, format: :json)
end
