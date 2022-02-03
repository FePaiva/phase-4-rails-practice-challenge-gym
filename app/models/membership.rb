class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client
# a client can have many gyms, but can only have one membership per gym. That why you scope to one gym and the membership is unique to that gym.
validates :client, uniqueness: {scope: :gym}

end
