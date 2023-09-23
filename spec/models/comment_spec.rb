require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:post) }

  describe '#post_comments_counter_updater' do
  end
end
