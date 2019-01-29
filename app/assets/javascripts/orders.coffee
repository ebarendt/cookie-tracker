class @OrderPage
  constructor: ->
    $(document).on 'blur', 'input', (event) ->
      row = $(event.target).closest('tr')
      inputs = row.find("input:not(.total)")
      sum = 0
      inputs.each (idx, input) -> sum += parseInt($(input).val(), 10)
      row.find('.total').val(sum)

