class User < ApplicationRecord
  has_many :posts, class_name: 'Post'
  has_many :comments, class_name: 'Like'
  has_many :likes, class_name: 'Comment'

  def most_recent_posts
    posts.order(created_at: :desc).limit(3)
  end

  # has_many :posts, foreign_key: 'author_id', class_name: 'Post'
  # has_many :comments, foreign_key: 'author_id', class_name: 'Like'
  # has_many :likes, foreign_key: 'author_id', class_name: 'Comment'
end
