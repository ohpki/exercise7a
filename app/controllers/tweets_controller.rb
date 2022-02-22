class TweetsController < ApplicationController
  def index
  @tweets = Tweet.all
  @rank_tweets = Tweet.order(impressions_count: 'DESC') # ソート機能を追加
  end

def show
  @tweet = User.find(params[:id])
  impressionist(@tweet, nil, unique: [:ip_address]) # 追記
end
end
