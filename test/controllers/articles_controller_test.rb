require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
   def setup
    @article = Article.new    
    @article.title = "New Title"
    @article.body = "This is the article Body"
    @article.save
   end

   
  test "should get new" do
    get :new
    assert_response :success
  end

end
