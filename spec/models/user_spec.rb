require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'Porag', posts_counter: 5) }

  it 'Should validate presence of name' do
    user.name = nill
    expect(user).to_not be_valid
  end

  it 'To be valid posts_counter must always be an integer' do
    user.posts_counter = 'p'
    expect(user).to_not be_valid
  end

  it 'To be valid posts_counter should be greated than or equal to zero' do
    user.posts_counter = -1
    expect(user).to_not be_valid
  end
  
end
