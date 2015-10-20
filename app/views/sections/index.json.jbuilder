json.array!(@sections) do |section|
  json.extract! section, :id, :time_estimate, :time_completed, :complete, :title, :class
  json.url section_url(section, format: :json)
end
