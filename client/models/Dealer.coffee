class Dealer extends Backbone.Model
  initialize: (config) ->
    @set
      deck: new Deck()

  giveCard: (player) ->
    player.hand.add(deck.pop())
