class TextsController < ApplicationController
    before_action :sign_in_required
    def create
        @book = Book.find(params[:book_id])
        @book.texts.create(texts_params)
        redirect_to admin_index_path
    end

    def index
        @book = Book.find(params[:book_id])
        @texts = @book.texts
    end
    
    def new
        @book = Book.find(params[:book_id])
    end
    
    private
        def texts_params
            params.require(:text).permit(:question, :answer)
        end
end
