class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true, length: {minimum: 5}

  def formatted_created_at
    created_at.strftime("%d-%m-%Y")
  end
end
