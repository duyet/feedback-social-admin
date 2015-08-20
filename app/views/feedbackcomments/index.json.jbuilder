json.array!(@feedbackcomments) do |feedbackcomment|
  json.extract! feedbackcomment, :id, :user, :created, :lastupdate, :content
  json.url feedbackcomment_url(feedbackcomment, format: :json)
end
