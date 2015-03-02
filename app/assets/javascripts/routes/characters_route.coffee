Dnd.CharactersRoute = Ember.Route.extend
  model: ->
    characters: @.store.find('character')
