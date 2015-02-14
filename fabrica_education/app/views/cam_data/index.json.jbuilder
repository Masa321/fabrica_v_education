json.array!(@cam_data) do |cam_datum|
  json.extract! cam_datum, :id, :datum_id, :path_data, :slicer_id, :print_time
  json.url cam_datum_url(cam_datum, format: :json)
end
