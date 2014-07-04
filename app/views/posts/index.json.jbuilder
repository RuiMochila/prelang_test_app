json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :title, :description, :link
  json.url post_url(post, format: :json)
end
