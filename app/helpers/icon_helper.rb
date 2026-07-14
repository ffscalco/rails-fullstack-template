# frozen_string_literal: true

# Renders Font Awesome 7 icons. Replaces the `fa_icon` helper that the
# font-awesome-rails gem used to provide, adapted to the modern Font Awesome
# free class pattern: a style prefix (`fa-solid` by default, or `fa-regular` /
# `fa-brands` via the `:style` option) plus one `fa-<name>` class per icon,
# instead of the legacy `fa fa-<name>`.
#
#   fa_icon("user")                         => <i class="fa-solid fa-user"></i>
#   fa_icon("github", style: "fa-brands")   => <i class="fa-brands fa-github"></i>
#   fa_icon("user", class: "text-lg")       => <i class="fa-solid fa-user text-lg"></i>
#   fa_icon("envelope", text: "Email")      => <i class="fa-solid fa-envelope"></i> Email
#   fa_icon("arrow-right", text: "Next", right: true) => Next <i class="fa-solid fa-arrow-right"></i>
module IconHelper
  DEFAULT_STYLE = "fa-solid"

  def fa_icon(names = "flag", options = {})
    options = options.deep_dup
    style = options.delete(:style) || DEFAULT_STYLE
    classes = [style]
    classes.concat(fa_icon_names(names))
    classes.concat(Array(options.delete(:class)))
    text = options.delete(:text)
    right = options.delete(:right)
    icon = content_tag(:i, nil, options.merge(class: classes))
    fa_icon_join(icon, text, right)
  end
  alias_method :icon, :fa_icon

  private

  def fa_icon_names(names = [])
    fa_array_value(names).map { |n| "fa-#{n}" }
  end

  def fa_array_value(value = [])
    value.is_a?(Array) ? value : value.to_s.split(/\s+/)
  end

  def fa_icon_join(icon, text, reverse_order = false)
    return icon if text.blank?

    elements = [icon, ERB::Util.html_escape(text)]
    elements.reverse! if reverse_order
    safe_join(elements, " ")
  end
end
