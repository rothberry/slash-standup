class User < ApplicationRecord
  has_many :responses
  has_many :questions, through: :responses
  
  attr_accessor :username
  
end
