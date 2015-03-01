Dnd.Character = Ember.Object.extend({})
#Dnd.Character = DS.Model.extend
Dnd.Character.reopenClass
  findAll: ->
    characters = Em.A()
    $.getJSON('/characters').then (data) ->
      console.log("Data: ", data)
      Ember.run () ->
        characters.pushObjects(data.characters)
        characters
