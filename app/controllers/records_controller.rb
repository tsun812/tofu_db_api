class RecordsController < ApplicationController
  def create
    records = Record.create(
        position: params[:position],
        application_id: params[:application_id]
    )
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

