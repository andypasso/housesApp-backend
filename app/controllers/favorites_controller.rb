class FavoritesController < ApplicationController
  # POST /favorites
  def create
    @favorite = current_user.favorites.build(house_id: params_id[:id]) unless current_user.favorite?(params_id[:id])
    if @favorite.save
      json_response(@favorite, :created)
    else
      json_response({ Message: @favorite.errors.messages })
    end
  end

  private

  def params_id
    params.permit(:id)
  end
end
