require 'test_helper'



class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @article = Article.new    
    @article.title = "New Title"
    @article.body = "This is the article Body"
    @article.save
  end

  test "article is saved" do
  	#new_article = Article.new  	
  	#new_article.title = "New Title"
  	#new_article.body = "This is the article body"
  	#new_article.save
    assert @article != nil
  	assert_not  @article.title.empty?
  	assert_not  @article.body.empty?
  end

  test "new article should be valid" do 
    assert @article.valid?
  end

  


end
