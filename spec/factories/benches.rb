FactoryBot.define do
  factory :bench do
    median_value { 1.5 }
    min_value { 1.5 }
    max_value { 1.5 }
    source { "MyString" }
  end
end
