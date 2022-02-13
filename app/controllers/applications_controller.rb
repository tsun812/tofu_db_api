class ApplicationsController < ApplicationController
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

def new
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

def show
  user_application = Application.find(params[:id])
  
  fields = user_application.fields
  records = user_application.records
  app_id = params[:id]
  recordIDArray = Record.select(:id).where(:application_id => app_id)

  resultArray =[]
  recordIDArray.each do |record|
  resultArray.push(Value.where(:record_id => record.id))
  end

  result = {application: user_application, fields: fields, records: records, values: resultArray[0]}
  render json: result
end
# {
#   "id": 3,
#   "primary_field": "food",
#   "secondary_field": "ingredient",
#   "background_color": "pink,",
#   "description": "This is a food app",
#   "font": "Ariel",
#   "display_theme": "grid",
#   "img_url": "www.youtube.com",
#   "app_name": "recipe dictionary",
#   "created_at": "2022-02-12T23:27:10.622Z",
#   "updated_at": "2022-02-12T23:27:10.622Z",
#   "user_id": 2
#   "field": [{field_name: "Word", field_type: string}, {field_name: "Part of Speech", field_type: string}]
#   "record": [{id: 1, field: 1, field_vale: Strawberry}, {id: 2, field: 2, field_vale: "Noun"}]
# }

# t.string   "primary_field"
# t.string   "secondary_field"
# t.string   "background_color"
# t.string   "description"
# t.string   "font"
# t.string   "display_theme"
# t.string   "img_url"
# t.string   "app_name"
# t.datetime "created_at",       null: false
# t.datetime "updated_at",       null: false
# t.integer  "user_id"

end
