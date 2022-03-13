require "rails_helper"

feature "user visits dashboard page", type: :feature, js: true do
  scenario "is successful" do
    # login_as_user

    visit root_path

    expect(page).to have_content "Find me in app/views/dashboard/index.html.slim"
  end
end
