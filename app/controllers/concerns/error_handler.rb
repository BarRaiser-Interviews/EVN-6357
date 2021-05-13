module ErrorHandler
    extend ActiveSupport::Concern

  included do
    rescue_from StandardError do |e|
        render_error("Something went wrong", 500)
      end

    rescue_from ActionController::ParameterMissing do |e|
        render_error(e.message, :bad_request)
      end

    rescue_from ActiveRecord::RecordNotFound do |e|
      render_error(e.message, :not_found)
    end
  end

  private
    def render_error(object, status)
      render json: {error: object}, status: status
    end
end