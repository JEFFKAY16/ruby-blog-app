require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'The post' do
    before(:each) do
      first_user = User.create(name: 'Jeff', photo: 'profile.jpg', bio: 'I am a test user')
      first_post = Post.create(title: 'Hello Post', text: 'Hello post post post', author_id: first_user.id)
      Like.create!(author_id: first_user.id, post_id: first_post.id)
    end

    it 'should have likes counter' do
      expect(Like.all.count).to eq(1)
    end

    it 'like must have a correct author' do
      expect(Like.first.author.name).to eq 'Jeff'
    end
  end
end
