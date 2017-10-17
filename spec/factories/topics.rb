FactoryGirl.define do
  factory :topic do
    fake_title = Faker::Simpsons.character
    title "#{fake_title}"
  end
end
