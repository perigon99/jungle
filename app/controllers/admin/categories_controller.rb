class Admin::CategoriesController < ApplicationController
  def index
    @categorie = Category.all
  end

  def new
    @categorie = Category.new
  end

  def create
    @categorie = Category.new(cat_params)

    if @categorie.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end
  def cat_params
    params.require(:category).permit(
      :name,
      
    )
  end
end
