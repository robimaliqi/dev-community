FactoryBot.define do
  factory :user do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    username {"#{Faker::Name.first_name.downcase}_#{rand(1..1000)}"}
    email {Faker::Internet.email}
    contact_number {Faker::PhoneNumber.phone_number_with_country_code}
    street_address {Faker::Address.street_address}
    city {Faker::Address.city}
    county {Faker::Address.state}
    country {Faker::Address.country}
    postcode {Faker::Address.postcode}
    date_of_birth {Faker::Date.birthday(min_age: 18, max_age: 65)}
    profile_title {User::PROFILE_TITLE.sample}
    password {'password'}
    about {"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."}
    confirmed_at {DateTime.now}
  end
end
