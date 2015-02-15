json.array!(@slicer_configs) do |slicer_config|
  json.extract! slicer_config, :id
  json.url slicer_config_url(slicer_config, format: :json)
end
