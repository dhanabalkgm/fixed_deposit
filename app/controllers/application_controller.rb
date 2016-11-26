class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def _parse_date_params(params, date_fields=[])
    return if params.nil? || date_fields.blank?

    Chronic.time_class = Time.zone
    date_fields.each do |field|
      field = field.to_s
      if params[field].present?
        params[field] = Chronic.parse(params[field])
      end
    end
    params
  end
end
