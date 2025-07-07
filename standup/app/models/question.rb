class Question < ApplicationRecord
  has_many :responses

  attr_accessor :question
end
