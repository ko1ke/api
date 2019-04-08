FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "jsmith #{n}"}
    name { "John Smith" }
    url { "http://exaple.com" }
    avatar_url { "http://exaple.com/avatar" }
    provider { "github" }
  end
end
