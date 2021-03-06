class ApplicationPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @record = record
  end

  def scope
    Pundit.policy_scope!(user, post.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
