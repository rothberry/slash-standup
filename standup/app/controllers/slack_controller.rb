require 'pry'
class SlackController < ApplicationController

  def slashcommand
    puts "SLASHCOMMAND"
    puts params
    binding.pry
    
  end
  
  def interactivity
    puts "INTERACT"
    puts params
    binding.pry
    
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
