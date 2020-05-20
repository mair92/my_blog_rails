FactoryBot.define do
  factory :comment do
    author { "Mike" }
    #body { "Article text" }
    sequence(:body) { |n| "comment body #{n}"}
  end
end