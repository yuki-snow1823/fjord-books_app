# frozen_string_literal: true
require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  def setup
    @user = create(:user)
  end

  test 'is_editable should return true if user is target user' do
    report = Report.new(user_id: @user.id, title: 'test title', content: 'test content')
    report.editable?(@user)
  end
end
