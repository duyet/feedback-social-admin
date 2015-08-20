class Feedback
  include Mongoid::Document
  include Mongoid::Timestamps
  #include Mongoid::MultiParameterAttributes

  field :title
  field :alias
  field :htmlContent
  field :state, default: ->{ "publish" }
  field :created, type: Time
  
  embeds_many :tags
  embeds_many :feedbackcomments

  validates_presence_of :title, :on => :create, :message => "Can't be blank"
  validates_presence_of :alias, :on => :create, :message => "Can't be blank"
  validates_presence_of :state, :on => :create, :message => "Can't be blank"
end
