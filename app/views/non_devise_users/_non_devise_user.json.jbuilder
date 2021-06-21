json.extract! non_devise_user, :id, :username, :password, :created_at, :updated_at
json.url non_devise_user_url(non_devise_user, format: :json)
