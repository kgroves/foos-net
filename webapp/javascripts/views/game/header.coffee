define [
  'jquery'
  'underscore'
  'marionette'
  'tpl!templates/game/header.html'

], ($, _, Marionette, HeaderTpl) ->

  Marionette.ItemView.extend
    template: HeaderTpl

    ui:
      label: '.header-label'

    setLabel: (label) ->
      @ui.label.html label
