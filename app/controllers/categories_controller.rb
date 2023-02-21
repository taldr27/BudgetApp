class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = Category.where(user_id: current_user.id)
  end
end
