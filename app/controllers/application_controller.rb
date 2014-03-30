class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :null_session
  before_action :default_json_format

  respond_to :json

  private

    def default_json_format
      request.format = 'json' unless params[:format]
    end
end
