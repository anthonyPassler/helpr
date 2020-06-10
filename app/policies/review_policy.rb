class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.post.completed && (record.post.user == user || record.post.bids.find{|b| b.approved == true}.user == user)
  end
end
