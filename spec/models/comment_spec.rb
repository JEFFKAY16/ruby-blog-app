require 'rails_helper'

RSpec.describe Comment, type: :model do
  
  describe 'The comments model' do
    before(:each) do
      first_user = User.create!(name: 'Jeff', photo: 'profile.jpg', bio: 'We love th earth, it is our planet')

      first_post = Post.create!(author_id: first_user.id, title: 'Earth', text: 'We love th earth, it is our planet by lil Dicky')

      Comment.create!(post_id: first_post.id, author_id: first_user.id, text: 'Living Earth')
    end

    it 'should have a text' do
      expect(Comment.first.text).to eq 'Living Earth'
    end

    it 'comment must be present' do
      expect(Comment.all.length).to eq 1
    end
  end

end
