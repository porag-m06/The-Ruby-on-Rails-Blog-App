require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { User.create(name: 'Test User', posts_counter: 0) }
  let(:post) { Post.create(author: user, title: 'Hello', text: 'post1', comments_counter: 0, likes_counter: 0) }

  it 'Post must have a title present' do
    post.title = nil
    expect(post).to_not be_valid
  end

  it 'Post title must not be more than 250 character long' do
    post.title = 't' * 251
    expect(post).to_not be_valid
  end

  it 'Post comments_counter mustbe only integer' do
    post.comments_counter = true
    expect(post).to_not be_valid
  end

  it 'Post comments_counter mustbe greater than or equla to 0' do
    post.comments_counter = -1
    expect(post).to_not be_valid
  end

end
