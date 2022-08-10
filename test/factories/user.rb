# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: User do
    name { 'Taro' }
    email { 'test@example.com' }
    password { 'password' }
  end

  factory :user2, class: User do
    name { 'Jiro' }
    email { 'test2@example.com' }
    password { 'password' }
  end

  factory :no_name_user, class: User do
    email { 'test3@example.com' }
    password { 'password' }
  end
end
