class Player extends Backbone.Model
  initialize: (config) ->
    @set
      hand: new Hand()
      bank: 0 # Maybe refactor to model
      hasLost: false

  requestCard: -> @trigger('requestCard', @)

  requestManyCards: (numCards) ->
    @trigger('requestManyCards', [@, numCards])

  bet: (amount) ->
    # Assumes that the player has enough money to bet
    console.assert(bank >= amount)
    bank -= amount
    @trigger('bet', [@, amount])

  fold: -> @trigger('fold', @)
