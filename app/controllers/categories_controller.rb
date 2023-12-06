class CategoriesController < ApplicationController
  def index
    @categories = current_user.categories
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.author = current_user

    if @category.save
      flash[:notice] = 'Category successfully created.'
      redirect_to categories_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end