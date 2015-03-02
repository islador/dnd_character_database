Dnd.NewCharacterRoute = Ember.Route.extend
  model: ->
    character: @.store.createRecord('character')
