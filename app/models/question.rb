class Question < ApplicationRecord
  has_many :answers
  validates :body, presence: true, length: {minimum: 3}
  validates :title, presence: true, length: {minimum: 3}

  def formatted_created_at
    created_at.strftime("%d-%m-%Y")
  end
end
