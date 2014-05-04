class @Player extends Backbone.Model
  initialize: (config) ->
    @set
      hand: new Hand()

  requestCard: -> @trigger('requestCard', @)

  requestManyCards: (numCards) ->
    @trigger('requestManyCards', [@, numCards])
