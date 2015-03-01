Dnd.IndexRoute = Ember.Route.extend
  model: ->
    Dnd.Character.findAll()
