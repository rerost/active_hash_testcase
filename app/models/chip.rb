class Chip < ActiveYaml::Base
  include ActiveHash::Associations
  belongs_to :question
end