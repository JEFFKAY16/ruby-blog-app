class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :likes, class_name: 'Like'
  has_many :comments, class_name: 'Comment'

  after_save :update_post_counter

  def update_post_counter
    author.increment!(:posts_counter)
  end

  def most_recent_comments
    comments.limit(5).order(created_at: :desc)
  end
end
