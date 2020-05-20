FactoryBot.define do
  factory :article do
    title { "Article title" }
    text { "Article text" }

    # создаем фабрику с названием article_with.. для создания статьи с нескольокими комментариями
    factory :article_with_comments do
      #после создания articla
      after :create do |article, evaluator|
        # создаем список из трех комментариев
        create_list :comment, 3, article: article
      end
    end
  end
end