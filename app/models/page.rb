class Page
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :fb_link, type: String
  field :website, type: String
  field :category, type: String
end
