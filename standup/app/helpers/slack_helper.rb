require 'json'
module SlackHelper
  def send_post_request(url, payload)
    begin
      uri = URI(url)
      headers = {
          'Authorization': "Bearer #{ENV["OAUTH"]}",
          'Content-type': "application/json"
        }

      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Post.new(uri.request_uri, headers)
      # body = {
      #     "replace_original": "true",
      #     "text": "Thanks for your request, we'll process it and get back to you."
      #   }
      request.body = payload.to_json

      response  = http.request(request)
      puts response
      
      puts "DONE?"
    rescue => err
      puts "ERR =>", err
      
    end
  end

  def insert_into_db()
    
  end
end