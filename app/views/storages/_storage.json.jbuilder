json.extract! storage, :id, :title, :size, :description, :created_at, :updated_at
json.url storage_url(storage, format: :json)