class Question < ApplicationRecord
  validates :body, presence: true, length: {minimum: 3}
  validates :title, presence: true, length: {minimum: 3}
end
