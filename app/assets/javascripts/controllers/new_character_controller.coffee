Dnd.NewCharacterController = Ember.ObjectController.extend

  actions:
    createCharacter: (character) ->
      router = @get('target')
      console.log("CharacterController Caught It")
      character.save().then (character) ->
        router.transitionTo('characters')

