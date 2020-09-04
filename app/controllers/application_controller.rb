class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  # called before every action on controllers
  before_action :authorize_request
  attr_reader :current_user
   #admin check

  private

  def is_admin
    admin_value = authorize_request[:admin] # the user object
    raise(ExceptionHandler::AuthenticationError, Message.unauthorized)  if !admin_value
  end
  # Check for valid request token and return user
  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
  end
end