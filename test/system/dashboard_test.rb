require "application_system_test_case"

class DashboardTest < ApplicationSystemTestCase
  test "user visits dashboard page successfully" do
    visit root_path
    assert_text "Find me in app/views/dashboard/index.html.slim"
  end
end
