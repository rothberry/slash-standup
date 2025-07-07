class Response < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  belongs_to :question, class_name: "question", foreign_key: "question_id"

  attr_accessor :answer
end
