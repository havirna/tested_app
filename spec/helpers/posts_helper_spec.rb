require 'rails_helper'
include PostsHelper

RSpec.describe PostsHelper, type: :helper do
  it 'assigns a user to a post' do

    # arrange our data => assigning variables
    creator = User.first_or_create!(email: 'virna@example.com', password: 'password', password_confirmation: 'password')
    @post = Post.new(title: 'MyString', body: 'MyText', views: 1)

    # act => we're acting with our arranged variables
    returned_post = assign_post_creator(@post, creator)

    # assert => asserting that our expected outcome matches our actual outcome
    expect(returned_post.user).to be(creator)
  end
end
