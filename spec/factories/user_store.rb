# frozen_string_literal: true

FactoryBot.define do
  factory :user_store do
    first_name { "Filip" }
    last_name { "Persson" }
    limited_access { false }
    is_owner { false }
    association :store
    association :user
  end

  trait :owner do
    is_owner { true }
  end

  trait :limited_access do
    limited_access { true }
  end
end
