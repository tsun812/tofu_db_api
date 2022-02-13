module FieldsHelper
    def get_field_id_by_name
       resultArray = Field.select(:id).where(:name => params[:field_name])
       return resultArray
    end
end

