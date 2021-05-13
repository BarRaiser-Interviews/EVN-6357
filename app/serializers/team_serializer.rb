class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :developers, each_serializer: DeveloperSerializer
end
