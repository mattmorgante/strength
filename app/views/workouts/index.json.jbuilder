json.array!(@workouts) do |workout|
  json.extract! workout, :id, :date, :name, :energy, :length, :time_of_day
  json.url workout_url(workout, format: :json)
end
