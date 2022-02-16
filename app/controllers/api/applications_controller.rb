class API::ApplicationsController < ApplicationController
  def index
    @applications = Application.all 
    render json: @applications
  end
  
  def destroy
    @applications = Application.all 
    @application = Application.find(params[:id])
    @application.destroy
    render json: @applications
end 

def create
  @applications = Application.create(
      primary_field: params[:primary_field],
      secondary_field: params[:secondary_field],
      background_color: params[:background_color],    
      description: params[:description],
      font: params[:font],
      display_theme: params[:display_theme],
      img_url: params[:img_url],
      app_name: params[:app_name],
      user_id: params[:user_id]
  )
  render json: @applications
end

def update
  user_application = Application.find(params[:id])
  user_application.update(
    primary_field: params[:primary_field],
    secondary_field: params[:secondary_field],
    background_color: params[:background_color],
    description: params[:description],
    font: params[:font],
    display_theme: params[:display_theme],
    img_url: params[:img_url],
    app_name: params[:app_name]
  )
  render json: user_application
end 


def show
  user_application = Application.find(params[:id])

  fields = user_application.fields
  records = user_application.records
  app_id = params[:id]
  
  # recordIDArray = Record.select(:id).where(:application_id => app_id)

  # resultArray =[]
  # recordIDArray.each do |record|
  # resultArray.push(Value.where(:record_id => record.id))
  # end
  # resultarray2 = resultArray.flatten(1)
  recordIDArray = Record.where(:application_id => app_id)

  resultArray =[]
  recordIDArray.each do |record|

    values = Value.where(:record_id => record.id)
    recordJSON = record.as_json
    recordJSON[:values] = values
    resultArray.push(recordJSON)
  end


  result = {application: user_application, fields: fields, records: resultArray}
  render json: result
end

end

