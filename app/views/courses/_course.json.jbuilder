json.extract! course, :id, :name, :area, :created_at, :updated_at
json.url course_url(course, format: :json)
