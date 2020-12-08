json.extract! question, :id, :desc, :gabarito, :image, :prova_id, :created_at, :updated_at
json.url question_url(question, format: :json)
