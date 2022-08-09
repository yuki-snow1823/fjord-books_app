require "application_system_test_case"

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
    # puts Report.find(1)
  end

  test 'delete report' do

  end
end
