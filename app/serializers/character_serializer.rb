class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :alignment, :role, :occupation, :allegiance, :goals, :created_at, :updated_at
end
