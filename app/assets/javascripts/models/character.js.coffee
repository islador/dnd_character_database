Dnd.Character = DS.Model.extend
  name: DS.attr('string')
  location: DS.attr('string')
  alignment: DS.attr('string')
  role: DS.attr('string')
  occupation: DS.attr('string')
  allegiance: DS.attr('string')
  goals: DS.attr('string')
  updated_at: DS.attr("date")
  created_at: DS.attr("date")

