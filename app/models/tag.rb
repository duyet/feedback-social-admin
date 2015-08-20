class Tag
  include Mongoid::Document
  field :name
  field :created, type: Time, default: ->{ Time.now }

  validates_presence_of :name, :on => :create, :message => "Can't be blank"

  embedded_in :feedback, :inverse_of => :tags
end
