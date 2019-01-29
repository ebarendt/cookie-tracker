class @OrderPage
  constructor: ->
    $(document).on 'blur', 'input', (event) =>
      orderType = $(event.target).data("order-type")
      row = $(event.target).closest('tr')
      rowInputs = row.find("input:not(.total)")
      row.find('.total').val @_sum(rowInputs)

      colInputs = $(document).find("input.order-#{orderType}")
      $(".#{orderType}-total").val @_sum(colInputs)

      allInputs = $(document).find("input.total")
      $(".final-total").val @_sum(allInputs)

  _sum: (inputs) ->
    sum = 0
    inputs.each (idx, input) -> sum += parseInt($(input).val(), 10)
    sum
