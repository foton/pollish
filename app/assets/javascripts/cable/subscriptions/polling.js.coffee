App.cable.subscriptions.create { channel: "PollingChannel", poll: "rvd" },
  # Called when the subscription is ready for use on the server
  connected: ->
    console.log "connected"
  #   @install()
  #   # @appear()

  # # Called when the WebSocket connection is closed
  disconnected: ->
    console.log "disconnected"
  #   @uninstall()

  # # Called when the subscription is rejected by the server
  rejected: ->
    console.log "rejected"
  #   @uninstall()

  received: (data) ->
    console.log 'got here'
    # console.log data
    # new Notification data["title"], body: data["body"]
