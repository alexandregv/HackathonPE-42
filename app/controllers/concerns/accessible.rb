module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_entreprise
      flash.clear
      redirect_to(recruter_path) && return
    elsif current_candidat
      flash.clear
      redirect_to(candidater_path) && return
    end
  end
end
