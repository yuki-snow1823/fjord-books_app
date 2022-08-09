FactoryBot.define do
  factory :user, class: User do
    name { 'Taro' }
    id { 1 }
    email { 'test@example.com' }
    password { 'password' }
  end
end
