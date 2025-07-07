class AddAnswerToResponse < ActiveRecord::Migration[8.0]
  def change
    add_column :responses, :answer, :string
  end
end
