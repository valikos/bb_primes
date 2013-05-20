class PrimeApp.Models.Prime extends Backbone.Model

  primes: []

  initialize: ->
    @primes = []

  isPrime: (number=0) ->
    return false if number < 2
    return true if number is 2
    limit = Math.ceil(Math.sqrt(number))
    for item in [2..limit]
      r = number % item
      return false if r is 0
    true

  getPromes: ->
    this.primes

  generate: (from, limit) ->
    this._resetPrimes
    primes = this._eratosphen limit
    @primes = _.compact(primes.slice(from, limit))

  _eratosphen: (n, options) ->
    # create sieve
    sieve = (i for i in [0..n])

    sieve[0] = false
    sieve[1] = false

    for s in [2..n] when (s <= n)
      if sieve[s]
        for i in [Math.pow(s, 2)..n] by s
          if ((i) % s) is 0
            sieve[i] = false

    sieve

  _resetPrimes: ->
    this.primes = []

window.myPrime = new PrimeApp.Models.Prime