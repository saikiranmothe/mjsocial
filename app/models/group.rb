class Group
  include Mongoid::Document
  field :name, type: String
  field :group_link, type: String
end
