class Reports::PaymentProfilesController < ToolApplicationController

  # Callbacks
  before_action :breadcrumbs, :report_permissions
  skip_after_action :verify_authorized


  def rollover
    @payment_profile_rollovers = @account.payment_profile_rollovers.includes(:payment_profile, :project).paginate(per_page: 20, page: params[:page]).order('payment_profile_rollovers.created_at desc')

    respond_to do |format|
      format.html
    end
  end


private


  def breadcrumbs
    @breadcrumbs.add_breadcrumb('Dashboard', root_path)
    @breadcrumbs.add_breadcrumb('Reports', reports_path)
  end


end
