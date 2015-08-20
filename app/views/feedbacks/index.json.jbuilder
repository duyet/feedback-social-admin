json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :title, :alias, :htmlContent, :state, :tags
  json.url feedback_url(feedback, format: :json)
end
