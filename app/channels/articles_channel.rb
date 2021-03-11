class ArticlesChannel < ApplicationCable::Channel
  def subscribed
    steam_from "articles:new"
  end
end
