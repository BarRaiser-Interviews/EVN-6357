class TeamsController < ApplicationController
  def index
    @teams = Team.includes(:developers).all
    render json: @teams, status: 200
  end
end
