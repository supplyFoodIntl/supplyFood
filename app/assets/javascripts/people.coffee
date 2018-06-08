jQuery ->
  $(document).on 'click', 'addAddress', (event) ->
    alert("you click me!!")
    event.preventDefault()

