class AdminController < ApplicationController
  before_action :sign_in_required, only: [:index]
  def index
    @user = User.find(current_user.id)
    @books = @user.books
  end
end
