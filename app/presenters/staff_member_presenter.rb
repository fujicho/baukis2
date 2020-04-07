class StaffMemberPresenter < ModelPresenter
  # 職員の停止フラグのON/OFFを表現する記号を返す。
  # ON: BALLOT BOX WITH CHECK (U+2611)
  # OFF: BALLOT BOX (U+2610)
  def suspended_mark
    object.suspended? ?
    view_context.raw("&#x2611;") :
    view_context.raw("&#x2610;")
  end
end