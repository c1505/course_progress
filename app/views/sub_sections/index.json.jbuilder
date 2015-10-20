json.array!(@sub_sections) do |sub_section|
  json.extract! sub_section, :id, :time_estimate, :time_completed, :complete, :title, :section_id
  json.url sub_section_url(sub_section, format: :json)
end
