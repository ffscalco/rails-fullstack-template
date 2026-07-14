# frozen_string_literal: true

require "test_helper"

class IconHelperTest < ActionView::TestCase
  test "renders the default solid style" do
    html = fa_icon("user")

    assert_includes html, 'class="fa-solid fa-user"'
  end

  test "merges extra classes passed via :class" do
    html = fa_icon("user", class: "text-lg")

    assert_includes html, 'class="fa-solid fa-user text-lg"'
  end

  test "overrides the style prefix via :style" do
    html = fa_icon("github", style: "fa-brands")

    assert_includes html, 'class="fa-brands fa-github"'
  end

  test "renders text after the icon by default" do
    html = fa_icon("envelope", text: "Email")

    assert_match(/<i class="fa-solid fa-envelope"><\/i> Email/, html)
  end

  test "renders text before the icon when :right is true" do
    html = fa_icon("arrow-right", text: "Next", right: true)

    assert_match(/Next <i class="fa-solid fa-arrow-right"><\/i>/, html)
  end
end
