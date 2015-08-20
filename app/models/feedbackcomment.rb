class Feedbackcomment
  include Mongoid::Document
  field :user, type: String
  field :created, type: Time, default: ->{ Time.now }
  field :updated, type: Time, default: ->{ new_record? ? 0 : Time.now }
  field :content, type: String

  embedded_in :feedback, :inverse_of => :feedbackcomments
end
