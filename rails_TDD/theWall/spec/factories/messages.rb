FactoryBot.define do
  factory :message do
    message { "Hello World!" }
    user { nil }
  end
end
