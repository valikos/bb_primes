class PrimeApp.Views.Forms.Generator extends Backbone.View
  el: '#prime-generator'

  events:
    "submit": "submit",
    "reset": "reset"

  primes: {}

  initialize: ->
    @primes = new PrimeApp.Views.PrimesArea({model: this.model})

  submit: (e) ->
    e.preventDefault()

    range = [
      +this.$('input[name=first]').val(),
      +this.$('input[name=last]').val()
    ]

    @model.generate(range[0], range[1])

    @primes.showResults()

  reset: (e) ->
    e.preventDefault()
    @primes.removePrimes()