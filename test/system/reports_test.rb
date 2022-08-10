# frozen_string_literal: true

require 'application_system_test_case'

class ReportsTest < ApplicationSystemTestCase
  setup do
    @user = create(:user)
    visit new_user_session_path
    fill_in('user_email', with: @user.email)
    fill_in('user_password', with: 'password')
    click_on('ログイン')
  end

  test 'create report' do
    visit reports_path
    click_on('新規作成')
    fill_in('タイトル', with: 'test title')
    fill_in('内容', with: 'test content')
    click_on('登録する')
    assert Report.find(1)
  end

  test 'update report' do
    create(:report, user_id: @user.id)
    visit edit_report_path(1)
    fill_in('タイトル', with: 'changed title')
    click_on('更新する')
    assert_text 'changed title'
    # find('p > strong:first-child')
  end

  test 'delete report' do
    create(:report, user_id: @user.id)
    report_count = Report.all.count
    visit reports_path
    accept_confirm do
      click_on '削除'
    end
    visit reports_path
    assert_equal report_count - 1, Report.all.count
  end
end
