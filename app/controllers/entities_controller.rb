class EntitiesController < ApplicationController
  def index
    @entities = Entity.where(:category_id => params[:category_id])
  end
  def new
    @entity = Entity.new
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])
    @entity = @category.entities.build(entity_params)
    @entity.user_id = current_user.id

    if @entity.save
      redirect_to category_entities_path(@category)
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount, :date)
  end
end
