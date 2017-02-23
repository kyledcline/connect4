class Turn < ActiveRecord::Base
  belongs_to :player, required: true
  belongs_to :match,  required: true

  default_scope ->{ order(:created_at) }
end
