json.array!(@jobs) do |job|
  json.extract! job, :id, :user_id, :datum_id, :status, :print_time, :rate, :photo
  json.url job_url(job, format: :json)
end
