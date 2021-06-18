class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordInvalid, with: :render_uprocessable_entity_response

  before_action :authorize

  private
  def authorize
    user= User.find_by(id:session[:user_id])



  #  @current_user= User.find_by(id: session[:user_id])
    render json: {errors: ["Not Authorized"]}, status: :unprocessable_entity

  end


  def render_uprocessable_entity_response(exception)
    render json: {erros: exception.record.errors.full_messages}, status: :unprocessable_entity
  end
end
