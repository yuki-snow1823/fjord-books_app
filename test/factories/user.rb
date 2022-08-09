FactoryBot.define do
  factory :user, class: User do
    name { 'Taro' }
    email { 'test@example.com' }
    password { 'password' }
  end
end
