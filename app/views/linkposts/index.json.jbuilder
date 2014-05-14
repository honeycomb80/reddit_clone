json.array!(@linkposts) do |linkpost|
  json.extract! linkpost, :id, :title, :user_id
  json.url linkpost_url(linkpost, format: :json)
end
