class OrdersController < ApplicationController
  def index
    Rails.logger.info "出现在push的index页面"
    ActionCable.server.broadcast 'order_channel', { message: "message", user: "current_user" }
    head :ok
  end

  def show

  end
end
