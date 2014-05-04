class @Deck extends Backbone.Collection
  initialize: (config) ->
    @add _([0...52]).shuffle().map (card) ->
      new Card
        rank: card % 13
        suit: suits[Math.floor(card / 13)]
  isEmpty: ->
    return @models.length is 0
