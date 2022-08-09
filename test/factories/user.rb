FactoryBot.define do
  factory :user, class: User do
    name { 'Taro' }
    email { 'test@example.com' }
    password { 'password' }
  end

  factory :no_name_user, class: User do
    email { 'test2@example.com' }
    password { 'password' }
  end
end
