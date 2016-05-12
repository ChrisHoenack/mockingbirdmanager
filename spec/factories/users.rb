FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "test@#{n}asdfadsf.com"}
    password "password"
    password_confirmation "password"
  end
end