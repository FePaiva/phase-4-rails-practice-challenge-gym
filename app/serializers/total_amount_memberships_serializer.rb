class TotalAmountMembershipsSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_amount_memberships

  def total_amount_memberships
    self.object.memberships.sum(:charge)
  end
end
