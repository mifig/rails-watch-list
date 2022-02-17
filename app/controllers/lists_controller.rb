class ListsController < ApplicationController
  def index 
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    @review = Review.new(list: @list)
  end

  def create
    @lists = List.all
    @list = List.new(list_params)

    if @list.save
      redirect_to list_path(@list)
    else
      render "lists/index"
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
