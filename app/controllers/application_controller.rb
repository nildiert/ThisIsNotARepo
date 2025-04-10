class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  set_current_tenant_through_filter # Required to opt into this behavior
  before_action :set_company_tenant

  def set_company_tenant
    company = Company.where(subdomain: request.subdomain).first
    if company
    set_current_tenant(company)
    else
      # puedes hacer lo que prefieras aquí, por ejemplo:
      render plain: "Tenant no encontrado", status: :not_found
      # o redirect_to root_path, o cualquier lógica
    end
  end
end
