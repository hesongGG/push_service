# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class OrderChannel < ApplicationCable::Channel
  def subscribed
    Rails.logger.info "连接到默认连接方法"
    stream_from "order_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def notify
    Rails.logger.info "nishupo"
  end
end
