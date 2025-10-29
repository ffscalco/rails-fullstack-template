class MainFormBuilder < ActionView::Helpers::FormBuilder
  DEFAULT_INPUT = "border-0 px-3 py-3 placeholder-slate-300 text-slate-600 bg-white rounded
    text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all
    duration-150".freeze

  def text_field(method, options = {})
    options[:class] = "#{options[:class]} #{DEFAULT_INPUT}"
    super
  end

  def email_field(method, options = {})
    options[:class] = "#{options[:class]} #{DEFAULT_INPUT}"
    super
  end

  def password_field(method, options = {})
    options[:class] = "#{options[:class]} #{DEFAULT_INPUT}"
    super
  end

  def submit(value = nil, options = {})
    options[:class] = "#{options[:class]} bg-emerald-500 text-white active:bg-emerald-700 text-sm font-bold uppercase px-6 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150 cursor-pointer w-full"
    super
  end

  def label(method, text = nil, options = {}, &block)
    options[:class] = "#{options[:class]} block uppercase text-xs font-bold mb-2"
    super
  end

  def textarea(method, options = {})
    options[:class] = "#{options[:class]} #{DEFAULT_INPUT}"
    super
  end

  def date_field(method, options = {})
    options[:class] = "#{options[:class]} #{DEFAULT_INPUT}"
    super
  end

  def select(method, choices = nil, options = {}, html_options = {}, &block)
    html_options[:class] = "#{html_options[:class]} #{DEFAULT_INPUT}"
    super
  end

  def file_field(method, options = {})
    options[:class] = "#{options[:class]} #{DEFAULT_INPUT}
      file:mr-4 file:py-2 file:px-4
      file:rounded-full file:border-0
      file:text-sm file:font-semibold
      file:bg-violet-50 file:text-violet-700
      hover:file:bg-violet-100 cursor-pointer"
    super
  end

  def radio_button_with_label(method, value, options = {})
    label_text = options.delete(:label) || value.to_s.humanize
    label_classes = "inline-flex items-center cursor-pointer"
    radio_classes = "form-radio border-0 rounded-full text-slate-700 w-5 h-5 ease-linear transition-all duration-150"
    span_classes = "ml-2 text-sm text-slate-600"

    @template.content_tag(:label, class: label_classes) do
      radio_button(method, value, options.merge(class: radio_classes)) +
        @template.content_tag(:span, label_text, class: span_classes)
    end
  end

  def check_box_with_label(method, options = {})
    label_text = options.delete(:label) || object&.class&.human_attribute_name(method) || method.to_s.humanize
    label_classes = "inline-flex items-center cursor-pointer"
    checkbox_classes = "form-checkbox border-0 rounded text-slate-700 w-5 h-5 ease-linear transition-all duration-150"
    span_classes = "ml-2 text-sm text-slate-600"

    checked_value = options.delete(:checked_value) || "1"
    unchecked_value = options.delete(:unchecked_value) || "0"

    @template.content_tag(:label, class: label_classes) do
      check_box(method, options.merge(class: checkbox_classes), checked_value, unchecked_value) +
        @template.content_tag(:span, label_text, class: span_classes)
    end
  end
end
