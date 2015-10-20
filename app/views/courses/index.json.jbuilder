json.array!(@courses) do |course|
  json.extract! course, :id, :time_estimate, :time_completed, :complete, :title, :curriculum
  json.url course_url(course, format: :json)
end
