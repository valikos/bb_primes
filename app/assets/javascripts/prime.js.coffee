# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
# window.Coffee = new (Backbone.View.extend(
#   template: _.template("<h1>123</h1>")
#   Collections: {}
#   Models: {}
#   Views: {}
#   start: ->
#     this.$el.html(this.template)
#     @
# ))(el: '#app-container')
# $ ->
#   window.Coffee.render
#   window.Coffee.start

window.PrimeApp =
  Collections: {}
  Models: {}
  Views: {Forms: {}}
  Router: {}

class PrimeApp.Router extends Backbone.Router

  routes:
    ".*": "index"

  index: ->
    model = new PrimeApp.Models.Prime
    # primesArea = new PrimeApp.Views.PrimesArea({model: model})
    checkerForm = new PrimeApp.Views.Forms.Checker({model: model})
    generatorForm = new PrimeApp.Views.Forms.Generator({model: model})