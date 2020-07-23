$(document).on("turbolonks:load", () => {
  $("div.button-wrapper").on("click", "button#update-entries-button", () => {
    approved = []
    not_approved = []
    canceled = []
    not_canceled = []

    $("table.entries input.approved").each((index, elem) => {
      if ($(elem).prop("checked"))
        approved.push($(elem).data("entry-id"))
      else
        not_approved.push($(elem).data("entry-id"))
    })

    
  })
})