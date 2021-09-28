class BooksController < ApplicationController
  
  def index
    @user=current_user
    @book=Book.new
    @books=Book.all

  end

  def create
    @user=current_user
    @book = Book.new(book_params)
    @books=Book.all
    @book.user_id = current_user.id
    @book.save
      redirect_to book_path(@book.id)
      
      
  end

  def edit
  end

  def show
    
    @book = Book.find(params[:id])
    @user = @book.user
  end


  def book_params
    params.require(:book).permit(:title, :body)
  end
end
