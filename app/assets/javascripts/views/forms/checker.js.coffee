class PrimeApp.Views.Forms.Checker extends Backbone.View
  el: "#prime-checker"

  events:
    "submit": "submit"

  templates:
    "prime": _.template($('#prime_number_widget').html())
    "complex": _.template($('#complex_number_widget').html())

  codes:
    "true": "prime"
    "false": "complex"

  submit: (e) ->
    e.preventDefault()
    checkable = +this.$("input[name=checker]").val()
    @_showResult this.model.isPrime(checkable)

  _showResult: (template) ->
    this.$el.append @templates[@codes[String(template)]]