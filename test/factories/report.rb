# frozen_string_literal: true

FactoryBot.define do
  factory :report, class: Report do
    title { 'test title' }
    content { 'test content' }
    user_id { 1 }
  end
end
