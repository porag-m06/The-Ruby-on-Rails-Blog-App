require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:user) { User.create(name: 'Test User', posts_counter: 0) }
  let(:post) { Post.create(title: 'Test Post', author: user, comments_counter: 0, likes_counter: 0) }

  it { should belong_to(:user) }
  it { should belong_to(:post) }

  describe '#post_likes_counter_updater' do
    let!(:like) { Like.create(user: user, post: post) }

    it 'updates the likes_counter and returns the correct count' do
      expect(like.post_likes_counter_updater).to eq(1)
      expect(post.reload.likes_counter).to eq(1)
    end
  end
end
