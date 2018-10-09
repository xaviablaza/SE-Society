FactoryBot.define do
  factory :user do
    email { |i| "johnsmith_#{i}@sose.org" }
    password "password"
    password_confirmation "password"
  end
end
