class DashboardController < ApplicationController
  def index
    breadcrumb "breadcrumb path 1", dashboard_index_path
    breadcrumb "breadcrumb path 2", dashboard_index_path
    breadcrumb "breadcrumb path 3", root_path
  end
end
