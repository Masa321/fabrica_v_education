json.array!(@data) do |datum|
  json.extract! datum, :id, :slice_id, :user_id, :name, :origin, :slice, :print_time, :delete_f
  json.url datum_url(datum, format: :json)
end
