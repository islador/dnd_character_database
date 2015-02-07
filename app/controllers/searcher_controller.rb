class SearcherController < ApplicationController
  def show
    # Displays the searcher default page
  end

  def characters
    unless params[:search].empty?
      # Searches through the characters table for all the things that match X
      names = Character.where("name = ?", params[:search])#.pluck("id")
      locations = Character.where("location = ?", params[:search])#.pluck("id")
      alignments = Character.where("alignment = ?", params[:search])#.pluck("id")
      roles = Character.where("alignment = ?", params[:search])#.pluck("id")
      occupations = Character.where("role = ?", params[:search])#.pluck("id")
      allegiances = Character.where("allegiance = ?", params[:search])#.pluck("id")
      goals = Character.where("goals = ?", params[:search])#.pluck("id")

      characters = [names, locations, alignments, roles, occupations, allegiances, goals]
      @characters = []

      character_ids = []

      # Search through each of the returned arrays, and only add the character to the @characters if it hasn't already been added.
      # Note: this can likely be done with a join, but sleep deprivation says no!
      characters.length.times do |i|
        characters[i].each do |c|
          if !character_ids.include?(c.id)
            character_ids = c.id
            @characters.push(c)
          end
        end
      end

      @characters
    else
      @characters = []
    end
  end

  def notes
    # Should do what characters does.
    # This means it needs to look in the individual strings I guess. This'll be slow...
  end
end
