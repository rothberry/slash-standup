class User < ApplicationRecord
  has_many :responses
  has_many :questions, through: :responses, source: :responses_table_foreign_key_to_questions_table

  attr_accessor :username
  
end
