class BooksController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @user.books.create(books_params)
        redirect_to admin_index_path
    end
    
    private
        def books_params
            params.require(:book).permit(:name)
        end
end
