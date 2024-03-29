class Post < ApplicationRecord
  belongs_to :author, foreign_key: :author_id, class_name: :User

  validates :author_id, :title, :body, presence: true
end
