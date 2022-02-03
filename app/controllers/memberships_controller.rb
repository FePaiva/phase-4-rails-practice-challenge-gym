class MembershipsController < ApplicationController

def create
  membership = Membership.create(membership_params)
  render json: membership, status: :created
end

private
# create strong params to ensure we permit only certain parameters.
def membership_params
  params.permit(:client_id, :gym_id, :charge)
end

end
