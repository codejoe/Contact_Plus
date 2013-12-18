class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    if user
      can :manage, Contact, user_id: user.id
    end
  end
end
