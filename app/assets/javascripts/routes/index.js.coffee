Dnd.IndexRoute = Ember.Route.extend
  model: ->
    this.store.find('character')
