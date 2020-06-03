class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
    @top_users = User.all.sort { |user1, user2| user2.score <=> user1.score }.first(5)
    # @top_users = User.all.sort_by { |user| user.average_rating }.first(5)
  end

  def devteam

  end
end
