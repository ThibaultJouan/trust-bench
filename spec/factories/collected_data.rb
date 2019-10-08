FactoryBot.define do
  factory :collected_datum do
    value { 0.1 }
    numerator { 1.5 }
    denominator { 15 }
    first_name { "Quentin" }
    last_name { "Prevost" }
    email { "quentin.prevost@argon-consult.com" }
    company { "Argon Consulting" }
    position { "Consultant" }
    activity_id { FactoryBot.create(:activity).id }
    approach_id { FactoryBot.create(:approach).id }
    kpi_id { FactoryBot.create(:kpi).id }
    size_id { FactoryBot.create(:size).id }
  end
end
