# For more information see: http://emberjs.com/guides/routing/

Dnd.Router.map ()->
  @resource('characters', ->
  )
  @route('character', path: '/characters/:character_id')
  @route('new_character', path: '/character/new')

