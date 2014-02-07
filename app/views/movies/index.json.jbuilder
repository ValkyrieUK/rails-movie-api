json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :desc, :year
  json.url movie_url(movie, format: :json)
end
