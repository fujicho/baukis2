class ConfirmingAddressPresenter < ConfirmingFormPresenter
  def postal_code_block(name, label_text, options)
    markup(:div, class: "input-block") do |m|
      m << decorated_label(name, label_text)
      m.div(object.send(name), label_text)
      m << hidden_field(name, options)
    end
  end
end