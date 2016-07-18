App.cable.subscriptions.create "PollingChannel",
  # Called when the subscription is ready for use on the server
  connected: ->
    @install()
    # @appear()

  # Called when the WebSocket connection is closed
  disconnected: ->
    @uninstall()

  # Called when the subscription is rejected by the server
  rejected: ->
    @uninstall()

  received: (data) ->
    new Notification data["title"], body: data["body"]

  # appear: ->
  #   console.log 'appearing'
  #   # Calls `AppearanceChannel#appear(data)` on the server
  #   # @perform("appear", appearing_on: $("main").data("appearing-on"))

  # away: ->
  #   console.log 'awaying'
  #   # Calls `AppearanceChannel#away` on the server
  #   # @perform("away")


  # buttonSelector = "[data-behavior~=appear_away]"

  install: ->
    console.log "installed"
    # $(document).on "page:change.appearance", =>
    #   @appear()

    # $(document).on "click.appearance", buttonSelector, =>
    #   @away()
    #   false

    # $(buttonSelector).show()

  uninstall: ->
    console.log "uninstalled"
    # $(document).off(".appearance")
    # $(buttonSelector).hide()
