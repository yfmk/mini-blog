class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @tweets = Tweet.where(user_id: current_user.id).order("created_at DESC")
  end
end
