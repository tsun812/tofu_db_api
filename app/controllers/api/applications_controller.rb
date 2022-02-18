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
    # user_application.update_columns(
    #   primary_field: params[:primary_field],
    #   secondary_field: params[:secondary_field],
    #   background_color: params[:background_color],
    #   description: params[:description],
    #   font: params[:font],
    #   display_theme: params[:display_theme],
    #   img_url: params[:img_url],
    #   app_name: params[:app_name]
    # )
    user_application.update(application_params)
    render json: user_application
  end 


  def show
    user_application = Application.find(params[:id])

    fields = user_application.fields
    records = user_application.records
    app_id = params[:id]
    
    fieldsWithKey ={}
    fields.each do |field|
      fieldID = field.id
      fieldsWithKey[fieldID] = field
    end
    # recordIDArray = Record.select(:id).where(:application_id => app_id)

    # resultArray =[]
    # recordIDArray.each do |record|
    # resultArray.push(Value.where(:record_id => record.id))
    # end
    # resultarray2 = resultArray.flatten(1)
    recordIDArray = Record.where(:application_id => app_id)

    object = {}
    resultArray =[]
    recordIDArray.each do |record|

      values = Value.where(:record_id => record.id)

      valuesWithKey = {}
      values.each do |value|
        valueID = value.id
        valuesWithKey[valueID] = value
      end
      recordJSON = record.as_json
      recordJSON[:values] = valuesWithKey
      object[record.id] = recordJSON
      resultArray.push(recordJSON)
    end



    result = {application: user_application, fields: fieldsWithKey, records: object}
    render json: result
  end



  def recordBySelectedFields 
    user_application = Application.find(params[:id])

    fields = user_application.fields
    records = user_application.records.select(:id, :position)
    app_id = params[:id]
    
    fieldsWithKey ={}
    primaryId = fields.select(:id).where(field_name: user_application.primary_field)
    secondaryId = fields.select(:id).where(field_name: user_application.secondary_field)
    recordIDArray = Record.where(:application_id => app_id)

    object = {}
    resultArray =[]
    recordIDArray.each do |record|

      valuesPrimary = Value.where(:record_id => record.id, :field_id => primaryId)
      valuesSecondary = Value.where(:record_id => record.id, :field_id => secondaryId)
      valuesPrimaryString = ""
      valuesSecondaryString = ""
      valuesPrimary.each do |value|
        valueID = value.id
        valuesPrimaryString= value.field_value
      end
      
      valuesSecondary.each do |value|
        valueID = value.id
        valuesSecondaryString = value.field_value
      end
      recordJSON = record.as_json
      recordJSON[:primary] = valuesPrimaryString
      recordJSON[:secondary] = valuesSecondaryString
      object[record.id] = recordJSON
      resultArray.push(recordJSON)
    end



    result = {records: object}
    render json: result
  end
 
  private
  def application_params
    params.require(:application).permit(:primary_field, :secondary_field, :background_color, :description, :font, :display_theme, :img_url, :app_name)
  end  
end


