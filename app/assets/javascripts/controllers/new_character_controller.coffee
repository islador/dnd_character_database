Dnd.NewCharacterController = Ember.ObjectController.extend

  actions:
    createCharacter: (character) ->
      console.log("character: ", character)
      console.log("CharacterController Caught It")
