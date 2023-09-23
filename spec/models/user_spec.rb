require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_numericality_of(:posts_counter).is_greater_than_or_equal_to(0) }
  it { should have_many(:posts) }
  it { should have_many(:likes) }
  it { should have_many(:comments) }

  describe '#three_recent_posts' do
  end
end
