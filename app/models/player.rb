class Player < ActiveRecord::Base
  belongs_to :match, validate: true
end
