require 'pry'
require 'json'
require 'net/http'

class SlackController < ApplicationController
  include SlackHelper


  def slashcommand
    puts "SLASHCOMMAND"
    puts params
    file = File.open("./app/controllers/modal.json")
    data = JSON.load(file)
    puts data
    render json: data
  end
  
  def interactivity
    puts "INTERACT"
    puts params

    payload = JSON.parse(params[:payload])
    channel_id = payload["container"]["channel_id"]
    message_ts = payload["container"]["message_ts"]
    response_url = payload["response_url"]
    action = payload["actions"][0]["action_id"]
    
    # if action is submit, try to save to database
    # if action is cancel, close message/modal
    # err..
    if action == "submit-action"
      puts "SUBMITTING"
      state = payload["state"]["values"]
      question_hash = {}
      state.each do |_, act|
        k, v = act.keys[0], act[act.keys[0]]["value"]
        question_hash[k] = v
      end
      # send_post_request(response_url, {"delete_original": "true"})
      puts 'q_hash', question_hash
      user_id = payload["user"]["id"]
      
      binding.pry
      
      render json: {"delete_original": "true"}
    elsif action == "cancel-action"
      puts "CANCELING"      
    end
    
  end

  def menu
    puts "MENUUUUGHJKL"
    binding.pry
    

  end

  def menu_json
    puts "MENU_LOADDD?"
    binding.pry
  end
  
end
