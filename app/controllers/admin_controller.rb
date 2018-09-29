class AdminController < ApplicationController
  before_action :sign_in_required, only: [:index]
  def index
    @user = User.find(25)
    @books = @user.books
  end
end
