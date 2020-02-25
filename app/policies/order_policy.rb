class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # ACTION A DEFINIR ICI BESOIN DE CONTROLLER ORDER AVANT
end
