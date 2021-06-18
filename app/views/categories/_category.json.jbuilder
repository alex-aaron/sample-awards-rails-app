json.extract! category, :id, :award_id, :nominees, :winner, :created_at, :updated_at
json.url category_url(category, format: :json)
