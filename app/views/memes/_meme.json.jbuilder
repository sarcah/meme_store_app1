json.extract! meme, :id, :name, :description, :downloads, :price, :category, :created_at, :updated_at
json.url meme_url(meme, format: :json)