class ProgramFormPresenter < FormPresenter
  def description
    markup(:div, class: "input-block") do |m|
    m << decorated_label(:description, "詳細", required: true)
    m << text_area(:description, rows: 6, style: "width: 454px")
    m.span " (800文字以内) ", class: "instruction", style: "float: right"
  end

  
end