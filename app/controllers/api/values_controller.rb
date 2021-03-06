class API::ValuesController < ApplicationController
  
  def index
    @values = Value.all 
    render json: @values
  end

  def create(record_id, field_id)
    Value.create(field_value: params[:field_value], record_id: record_id, field_id: field_id)
  end

  def update
    value = Value.find(params[:id])
    value.update_columns(
      field_value: params[:field_value]
    )
    render json: value
  end
  # def update(record_id, field_id)
  #   value = Value.find_by(record_id: record_id, field_id: field_id)
  #   value.update_columns(field_value: params[:field_value])
  # end

  def destroy(record_id, field_id)
    value = Value.find_by(record_id: record_id, field_id: field_id)
    value.destroy
  end

end
