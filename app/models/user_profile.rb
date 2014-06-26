class UserProfile
  include Mongoid::Document
  field :name, type: String
  field :last_name, type: String
  field :website, type: String
  field :fb_link, type: String
  field :image, type: String
end
