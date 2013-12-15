class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.answer?
      can :read, Question
    else
      can :manage, Question
    end
  end
end
