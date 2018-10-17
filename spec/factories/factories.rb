FactoryBot.define do
  factory :user do
    sequence(:email) { |i| "johnsmith_#{i}@sose.org" }
    password { "password" }
    password_confirmation { "password" }
    first_name { "John" }
    last_name { "Smith" }
    username { "johnsmith" }
  end
end
