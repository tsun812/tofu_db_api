class API::FieldsController < ApplicationController
    def index
        @fields = Field.all 
        render json: @fields
    end

    def destroy
        @fields = Field.all 
        @field = Field.find(params[:id])

        # remove selected primary/secondary field if that field is deleted. Did it this way because no time to adjust the schema at this time.
        deleted_field_name = @field.field_name
        application_ID = @field.application_id
        application = Application.find(application_ID)
        if application.primary_field === deleted_field_name
            application.update(primary_field: "")
        end
        if application.secondary_field === deleted_field_name
            application.update(secondary_field: "")
        end

        @field.destroy
        render json: @fields
    end

    def create
        field = Field.create(
            field_name: params[:field_name],
            field_type: params[:field_type],
            application_id: params[:application_id]
            )
        records = Record.where(application_id: params[:application_id])
        unless records.nil?
            records.each do |record|
                createValue(record.id, field.id)
            end
        end
        render json: field
    end 

    def update
       field = Field.find(params[:id])
       p params
       field.update(record_params)
       render json: field
    end

    private
    def record_params
      params.require(:field).permit(:field_name, :field_type)
    end  

end
