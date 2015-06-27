json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :sets, :reps, :weight
  json.url exercise_url(exercise, format: :json)
end
