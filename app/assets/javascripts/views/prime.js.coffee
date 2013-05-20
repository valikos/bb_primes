class PrimeApp.Views.Primes extends Backbone.View
  template: _.template('<span class="badge badge-inverse"><%= item %></span>')

  render: ->
    this.$el.html(this.template(item))