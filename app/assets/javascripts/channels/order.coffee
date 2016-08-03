App.order = App.cable.subscriptions.create "OrderChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log("可以输出吗？");
    $('div.jiudian-store').append("sss")
    # $('div#js-room-new').append("sses")
    # Called when there's incoming data on the websocket for this channel

  notify: ->
    @perform 'notify'
