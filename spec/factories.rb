FactoryBot.define do
  factory :user do
    name "MyString"
    email "MyString"
    password_digest "MyString"
  end
  factory(:destination) do
    planet("Broop Kidron Thirteen")
    location("Ibiza")
    locals("Mouse")
    transportation("Tanngrisnir")
  end
end
