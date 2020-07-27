class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.name
    @tweets = user.tweets
  end
end