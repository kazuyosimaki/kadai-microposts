class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    user = User.find(params[:user_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:user_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to user
  end
end