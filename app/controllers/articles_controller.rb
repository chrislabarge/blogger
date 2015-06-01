class ArticlesController < ApplicationController
	include ArticlesHelper #I think we can do this with model Validations



	def index
		@articles = Article.all 
	end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
		@comment.article_id = @article.id #this is so we can create a new comment on a article page
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
		
	end


	def update
		@article = Article.find(params[:id])
		@article.update(article_params)

		flash.notice = "Article '#{@article.title}' Updated!"

		redirect_to article_path(@article)
	end

	def create
		 @article = Article.new(article_params) #this points to a method in the helper
		#@article = Article.new(params[:article]) #is this same as below
		#@article.title = params[:article][:title]
		#@article.body =  params[:article][:body]
		@article.save
		
		flash.notice = "Article '#{@article.title}' Created!"

		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		
		flash.notice = "Article '#{@article.title}' Destroyed!"

		redirect_to articles_path
	end


end
