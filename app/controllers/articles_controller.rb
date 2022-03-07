class ArticlesController < ApplicationController
    def show
        @article = Article.find(2)
    end
    

    def new
        @article= Article.new
        @article.title= 'Demo'
        # variable llena del dato asignado
    end
    #el metodo params recibe los datos del control 
    def create
        @article = Article.create(title: params[:article][:title],content: params[:article][:content])
        render json: @article
    end
end
