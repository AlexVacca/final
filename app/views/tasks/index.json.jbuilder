json.array!(@tasks) do |task|
  json.extract! task, :id, :tittle, :content, :duration, :stard, :endd, :user_id, :finished
  json.url task_url(task, format: :json)
end
