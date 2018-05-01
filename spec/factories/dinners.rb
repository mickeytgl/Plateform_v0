FactoryBot.define do
  factory :dinner do
    guest       1
    address     "Torre de Pizza 205"
    time        "Here goes some time"
    description "Here goes some description"
    cost        15
    currency    "eur"
  end
end
