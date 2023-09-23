require 'rails_helper'

RSpec.describe Like, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:post) }

  describe '#post_likes_counter_updater' do
  end
end
