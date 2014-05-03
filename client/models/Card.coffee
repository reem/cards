class Card extends Backbone.Model
  initialize: (config) ->
    @rank = config.rank
    @suit = config.suit
