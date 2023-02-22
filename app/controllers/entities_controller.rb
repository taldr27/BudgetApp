class EntitiesController < ApplicationController
  def index
    @entities = Entity.where(category_id: params[:category_id])
  end

  def new
    @entity = Entity.new
    @category = Category.find(params[:category_id])
    @categories = Category.where(user_id: current_user.id)
  end

  def create
    entity_params[:entities][:category_id].each do |e|
      @entity = Entity.new(entity_params.except(:entities))
      @entity.user_id = current_user.id
      @category = Category.find(e)
      @entity.category_id = @category.id
      @entity.save
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount, entities: {})
  end
end
