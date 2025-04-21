# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { "Default Product" }
    price_cents { 1000 }
    quantity { 10 }
    association :store

    sequence(:sku) { |n| "#{Array('A'...'Z').sample(3).join}#{n}" }
  end
end
