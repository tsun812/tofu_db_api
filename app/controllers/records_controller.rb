class RecordsController < ApplicationController
  def createValue(record_id, field_id)
    Value.create(field_value: nil, record_id: record_id, field_id: field_id)
  end

  def create
    records = Record.create(
        position: params[:position],
        application_id: params[:application_id]
    )

    allfields = Field.where(application_id: params[:application_id] )
    allfields.each do |field|
      createValue(records.id, field.id)
    end
    render json: records
  end

  def destroy
    records = Record.all
    record = Record.find(params[:id])
    record.destroy
    render json: records
end

  def update
    record = Record.find(params[:id])
    record.update(
      position: params[:position],
      application_id: params[:application_id]
    )
    render json: record
  end

end


