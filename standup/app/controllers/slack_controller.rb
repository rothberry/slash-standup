require 'pry'
require 'json'

class SlackController < ApplicationController

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
    channel_id = payload["channel"]["id"]
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
      render json: {}
    elsif action == "cancel-action"
      puts "CANCELING"
      uri = URI(response_url)

      binding.pry

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
