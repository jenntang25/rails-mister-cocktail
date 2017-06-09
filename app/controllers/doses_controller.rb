class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
   # @ingredient = Ingredient.find(params[:dose][:ingredient])
   @cocktail = Cocktail.find(params[:cocktail_id])
   @dose = Dose.new(dose_params)
   @dose.cocktail = @cocktail
   # @dose.ingredient = @ingredient
    if @dose.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  def destroy
     @dose = Dose.find(params[:id])
      @dose.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to cocktail_path(@dose.cocktail)
  end
  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
