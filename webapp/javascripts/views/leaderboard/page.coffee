define [
  'jquery'
  'underscore'
  'marionette'
  'tpl!templates/leaderboard/page.html'
  'views/game/playerlistrow'
  'collections/players'

], ($, _, Marionette, LeaderBoardPageTpl, PlayerListRow, PlayersCollection) ->
  
  Marionette.CompositeView.extend
    className: 'hero-unit leaderboard'
    template: LeaderBoardPageTpl
    itemView: PlayerListRow
    itemViewContainer: 'tbody'
    itemViewOptions:
      hideX: true

    initialize: (opts) ->
      new PlayersCollection().fetch
        success: (collection, response, options) =>
          @collection = collection
          @renderCollection()
