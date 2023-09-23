require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_numericality_of(:posts_counter).is_greater_than_or_equal_to(0) }
  it { should have_many(:posts) }
  it { should have_many(:likes) }
  it { should have_many(:comments) }

  describe '#three_recent_posts' do
    let(:user) { User.create(name: 'Test User', posts_counter: 0) }
    let!(:older_post) { Post.create(title: 'Older Post', author: user, created_at: 1.week.ago) }
    let!(:recent_posts) do
      3.times.map do
        Post.create(title: 'Recent Post', author: user, created_at: Time.zone.now)
      end
    end

    it 'returns the three most recent posts' do
      expect(user.three_recent_posts).to match_array(recent_posts)
    end
  end
end
