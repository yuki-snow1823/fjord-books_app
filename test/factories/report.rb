FactoryBot.define do
  factory :report, class: Report do
    title { 'test title' }
    content { 'test content' }
    association :user, factory: :report_user
  end

  factory :report_user, class: User do
    name { 'Ellen' }
    email { 'ellen@example.com' }
    password { 'password' }
  end
end
