class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :null_session
  
  def createValue(record_id, field_id)
    Value.create(field_value: params[:field_value], record_id: record_id, field_id: field_id)
  end
end
