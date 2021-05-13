class AlertsController < ApplicationController
  before_action :set_team

  def receive_alert
    alert = Notifier.new(@team).call
    render json: alert, status: 200
  end

  private

    def set_team
      @team = Team.find(params[:id])
    end
end
