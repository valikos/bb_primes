class PrimeApp.Views.PrimesArea extends Backbone.View
  el: '#primes-area'

  templates:
    primes: _.template('<span class="badge badge-inverse"><%= item %></span>')

  clearResults: ->
    this.$el.html('')

  showResults: ->
    @clearResults()
    for prime in @model.primes
      this.$el.append(this.templates["primes"]({item: prime}))