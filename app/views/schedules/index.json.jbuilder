json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :time, :gym_id
  json.url schedule_url(schedule, format: :json)
end
