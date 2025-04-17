class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  set_current_tenant_through_filter # Required to opt into this behavior
  before_action :set_company_tenant
  before_action :set_locale


  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def set_company_tenant
    company = Company.where(subdomain: request.subdomain).first
    if company
    set_current_tenant(company)
    else
      render plain: "Tenant no encontrado", status: :not_found
    end
  end
end
