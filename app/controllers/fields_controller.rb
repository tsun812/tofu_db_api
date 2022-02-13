class FieldsController < ApplicationController

    def destroy
        @fields = Field.all 
        @field = Field.find(params[:id])
        @field.destroy
        render json: @fields
    end

    def create
        @fields = Field.create(
            field_name: params[:field_name],
            field_type: params[:field_type]
            )
        render json: @fields
    end 

    def update
       @field = Field.find_by(params[:id
       field.update(params[:name], params[:field_type])
       render json: @field
    end

end
