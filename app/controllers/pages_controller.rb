class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @channel = Channel.where(name: "general")
    @messages = Message.where(channel: @channel)
  end
end
