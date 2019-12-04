class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :notification

  # include Pundit

  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # private

  # def skip_pundit?
  #   devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  # end

  def notification
    notifications = Notification.where("user_id = ? AND viewed = ?", current_user, false)
   # Si j qi des notifications qlors j affiche la flash notice
  #tu passes toutes les modifq true

    flash[:notice] = "Vous avez vendu #{notifications.size} bon(s)" if notifications.size > 0

    notifications.each do |notification|
      notification.viewed = "true"
      notification.save
    end
  end
end
