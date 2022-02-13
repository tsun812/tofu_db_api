class ValuesController < ApplicationController
  def create(record_id, field_id)
    Record.create(record_value: params[:record_value], record_id: record_id, field_id: field_id)
  end

  def update(record_id, field_id)
    Record.where(record_id: record_id, field_id: field_id).update(record_value:params[:record_value])
  end

  def destroy(record_id, field_id)
    Record.where(record_id: record_id, field_id: field_id).destroy
  end

end
