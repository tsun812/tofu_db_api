class FieldsController < ApplicationController

    def destroy
        @fields = Field.all 
        @field = Field.find(params[:id])
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
        render json: @fields
    end 

    def update
       @field = Field.find_by(params[:id])
       @field.update_columns(field_name: params[:field_name], field_type: params[:field_type])
       render json: @field
    end

end
