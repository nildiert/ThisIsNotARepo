class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  # set_current_tenant_through_filter
  before_action :set_current_company

  private
  def set_current_company
    # Por ejemplo, si el tenant se determina por subdominio:
    company = Company.find_by(subdomain: request.subdomain)
    ActsAsTenant.current_tenant = company
  end

end
