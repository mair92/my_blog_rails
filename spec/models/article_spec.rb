require "rails_helper"



describe Article do
  describe "validations" do
    it { should validate_presence_of :title } 
    it { should validate_presence_of :text } 
  end
  describe "associations" do
    it { should have_many :comments } 
  end

  describe "#subject" do 
    it "returns the Article title" do
      #создаем объект article хитрым способом

      article = create(:article, title: 'Lorem ipsum')
      # assert, проверка
      expect(article.subject).to eq 'Lorem ipsum'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
      #создаем статью, но в этот раз с комментариями э
      article = create(:article_with_comments)

      # проверка
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end
end
