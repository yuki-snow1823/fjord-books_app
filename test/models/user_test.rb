# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = create(:user)
    @no_name_user = create(:no_name_user)
  end

  test 'name_or_email should correct value if user has name' do
    assert_equal @user.name_or_email, @user.name
  end

  test 'name_or_email should correct value if user has not name' do
    assert_equal @no_name_user.name_or_email, @no_name_user.email
  end
end
