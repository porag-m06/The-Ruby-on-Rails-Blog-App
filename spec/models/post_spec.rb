require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_length_of(:title).is_at_most(250) }
  it { should validate_numericality_of(:comments_counter).is_greater_than_or_equal_to(0) }
  it { should validate_numericality_of(:likes_counter).is_greater_than_or_equal_to(0) }
  it { should belong_to(:author) }
  it { should have_many(:likes) }
  it { should have_many(:comments) }

  describe '#user_posts_counter_updater' do
  end

  describe '#five_recent_comments' do
  end
end
