class Question < ActiveYaml::Base
  include ActiveHash::Associations
  has_many :chips
end