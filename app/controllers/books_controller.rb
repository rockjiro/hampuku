class BooksController < ApplicationController
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
    
    def edit
        @user = User.find(params[:user_id])
        @book = Book.find(params[:id])
    end
    
    private
        def books_params
            params.require(:book).permit(:name, :description, :author, :star)
        end
end
