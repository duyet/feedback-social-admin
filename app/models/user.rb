class User
  include Mongoid::Document
  field :username, type: String
  field :email, type: String
  field :password, type: String
  field :isActive, type: String
  field :timeCreated, type: Date
end
