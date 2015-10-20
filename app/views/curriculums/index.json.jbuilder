json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id, :time_estimate, :time_completed, :complete, :title
  json.url curriculum_url(curriculum, format: :json)
end
