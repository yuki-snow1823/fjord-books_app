# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = create(:user)
    @user2 = create(:user2)
    @no_name_user = create(:no_name_user)
  end

  test 'name_or_email should correct value if user has name' do
    assert_equal @user.name_or_email, @user.name
  end

  test 'name_or_email should correct value if user has not name' do
    assert_equal @no_name_user.name_or_email, @no_name_user.email
  end

  test 'follow' do
    @user.follow(@user2)
    assert @user.following?(@user2)
  end

  test 'unfollow' do
    @user.follow(@user2)
    @user.unfollow(@user2)
    assert_not @user.following?(@user2)
  end
end
