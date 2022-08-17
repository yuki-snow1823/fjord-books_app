# frozen_string_literal: true

require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  def setup
    @user = create(:user)
    @no_report_user = create(:user2)
  end

  test 'is_editable should return true if user is target user' do
    report = Report.new(user_id: @user.id, title: 'test title', content: 'test content')
    assert_equal true, report.editable?(@user)
  end

  test 'is_editable should return false if user is not target user' do
    report = Report.new(user_id: @user.id, title: 'test title', content: 'test content')
    assert_equal false, report.editable?(@no_report_user)
  end
end
