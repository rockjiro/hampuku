class BooksController < ApplicationController
    before_action :sign_in_required, except: [:show]
    def create
        @user = User.find(params[:user_id])
        @user.books.create(books_params)
        redirect_to admin_index_path
    end

    def destroy
        user = User.find(params[:user_id])
        book = user.books.find(params[:id])
        book.destroy
        redirect_to admin_index_path        
    end
    
    def new
        @user = User.find(params[:user_id])
    end
    
    def show
        @user = User.find(params[:user_id])
        @book = Book.find(params[:id])        
    end
    
    def edit
        @user = User.find(params[:user_id])
        @book = Book.find(params[:id])
    end
    
    def update
        @user = User.find(params[:user_id])
        @book = Book.find(params[:id])
        if @book.update(books_params)
            redirect_to admin_index_path
        else
            render 'edit'
        end
    end
    
    private
        def books_params
            params.require(:book).permit(:name, :description, :author, :star)
        end
end
