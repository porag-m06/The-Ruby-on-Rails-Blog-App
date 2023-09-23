require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { User.create(name: 'Test User', posts_counter: 0) }

  it { should belong_to(:author) }
  it { should have_many(:likes) }
  it { should have_many(:comments) }
  it { should validate_presence_of(:title) }
  it { should validate_length_of(:title).is_at_most(250) }
  it { should validate_numericality_of(:comments_counter).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:likes_counter).is_greater_than_or_equal_to(0) }

  describe '#user_posts_counter_updater' do
    let(:user) { User.create(name: 'Test User', posts_counter: 0) }
    let!(:posts) do
      3.times.map do
        Post.create(title: 'Test Post', author: user, comments_counter: 0, likes_counter: 0)
      end
    end

    it 'updates the posts_counter and returns the correct count' do
      expect(user.user_posts_counter_updater).to eq(3)
      expect(user.reload.posts_counter).to eq(3)
    end
  end


  describe '#five_recent_comments' do
    let(:post) { Post.create(title: 'Test Post', author: user, comments_counter: 0, likes_counter: 0) }
    let!(:older_comment) { Comment.create(user:, post:, text: 'Older Comment', created_at: 1.week.ago) }
    let!(:recent_comments) do
      5.times.map do
        Comment.create(user:, post:, text: 'Recent Comment', created_at: Time.zone.now)
      end
    end

    it 'returns the five most recent comments' do
      expect(post.five_recent_comments).to match_array(recent_comments)
    end
  end
end
