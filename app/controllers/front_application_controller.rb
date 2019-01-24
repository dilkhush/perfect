class FrontApplicationController < ApplicationController


  # Layout
  layout 'front'


  # Callbacks
  before_action :ensure_correct_protocol
  before_action :dont_allow_subdomain


protected



  #
  # Don't allow subdomains to view a page
  def dont_allow_subdomain
    raise ActiveRecord::RecordNotFound if request.subdomain.present? && request.subdomain != "www" && request.subdomain != "perfect-dev"
  end


end
