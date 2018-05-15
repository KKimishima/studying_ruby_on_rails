json.extract! article, :id, :tilte, :contents, :created_at, :updated_at
json.url article_url(article, format: :json)
