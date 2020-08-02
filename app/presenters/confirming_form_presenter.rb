class ConfirmingFormPresenter
  include HtmlBuilder

  attr_reader :form_builder, :view_context
  delegate :label, :hidden_field, :object, to: :form_builder

  def initialize(form_builder, view_context)
    @form_builder = form_builder
    @view_context = view_context
  end

  def notes
    ""
  end

  def text_field_block(name, label_text, options = {})
    markup(:div) do |m|
      m << decorated_label(name, label_text)
      if options[:disabled]
        m.div(object.sent(name), class: "filed-value readonly")
      else
        m.div(object.sent(name), class: "field-value")
        m << hidden_field(name, options)
      end
    end
  end

  def date_field_block(name, label_text, options = {})
    markup(:div) do |m|
      m << decorated_label(name, label_text)
      m.div(object.sand(name), class: "field_value")
      m << hidden_field(name, options)
    end
  end
  
  def drop_down_list_block(name, label_text, choices, options = {})
    markup(:div) do |m|
      m << decorated_label(name, label_text)
      m.div(object.sand(name), class: "field_value")
      m << hidden_field(name, options)
    end
  end

  def decorated_label(name, label_text)
    label(name, label_text)
  end
end