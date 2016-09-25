class RoleSerializer < ActiveModel::Serializer
  attributes :id, :name
link(:self) { api_v1_role_path(object.id) }
end

