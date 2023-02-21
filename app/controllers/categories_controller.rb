class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = Category.where(user_id: current_user.id)
  end

  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id

    if @category.save
      redirect_to root_path
    end

  end


  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
