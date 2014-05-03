class Game extends Backbone.Model
  initialize: (config) ->
    @set
      players: config.players
      dealer:  config.dealer || new Dealer()
