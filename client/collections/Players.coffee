class Players extends Backbone.Collection
  activePlayers:   -> @reject((player) -> player.hasLost)
  inactivePlayers: -> @filter((player) -> player.hasLost)
