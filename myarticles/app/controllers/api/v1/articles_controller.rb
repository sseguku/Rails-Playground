class Api::V1::ArticlesController < ApplicationController

    def index 
        articles = Article.order('created_at DESC')
        render json: {status: 'Success', message: 'Loaded Articles', data: articles}, status: :ok
    end

    def show
        article = Article.find(params[:id])
        render json: {status: 'Success', message: 'Loaded Articles', data: article}, status: :ok
    end

    def create 
        article = Article.new(article_params)
        if article.save
            render json: {status: 'Success', message: 'Article Saved', data: article}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Article not Saved', data: article.errors}, status: :unprocessable_entity
        end
    end

    private 
    def article_params
        params.permit(:title, :body)
    end

    def destroy
        article = Article.find(params[:id])
        article.destroy

    end

    def update
        article = Article.find(params[:id])
        
        if article.update_attributes(article_params)
            render json: {status: 'Success', message: 'Article Updated', data: article}, status: :ok
        else

        end
    end
end
