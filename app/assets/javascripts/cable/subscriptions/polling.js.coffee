App.cable.subscriptions.create { channel: "PollingChannel", code: "test" },
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
    console.log data

    myChart.data.datasets[0].data = [
      _.find(data, (vote) -> vote.value == "yes").vote_count,
      _.find(data, (vote) -> vote.value == "no").vote_count,
      _.find(data, (vote) -> vote.value == "maybe").vote_count,
    ]
    myChart.update()
    # myChart.data.datasets[0].data = [1,2,3];
    # myChart.update()
    # console.log data
    # new Notification data["title"], body: data["body"]
