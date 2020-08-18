class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @items_array = []
    @tweets = Tweet.includes(:user).order("created_at DESC")
    @tweets = Tweet.page(params[:page]).per(9)
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
      @items.each do |item|
        @items_array.push(item)
      end
    end
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def edit
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end
  
  def show
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end

  def self.search(search)
    if search
      Tweet.where('title LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
  
  private
  def tweet_params
    params.require(:tweet).permit(:title, :image, :text).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end