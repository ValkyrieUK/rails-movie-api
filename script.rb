require 'HTTParty'
class ApiCall
  def self.response
    puts 'name of movie?'
    movie_name = gets.chomp
    access_token = '494a2ff133a82beb17cb0c44bdfcb3a5'
    api_url = "http://localhost:3000/api/movies/#{movie_name}?access_token=#{access_token}"
    HTTParty.get(api_url)
  end

  # response.each do |movie|
  #   # puts movie['title']
  #   # puts movie['year']
    #   # puts movie['desc']
    # end
  puts response.body
end