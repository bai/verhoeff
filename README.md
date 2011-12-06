# Verhoeff [![Build Status](https://secure.travis-ci.org/bai/verhoeff.png)](http://travis-ci.org/bai/verhoeff)

This is pure Ruby (1.9 compatible) implementation of the Verhoeff algorithm.

## Trivia

The Verhoeff algorithm uses the properties of D5 (the dihedral group of order 10) — a non-commutative system of operations on ten elements, corresponding to the results of rotating or reflecting (flipping) a regular pentagon.

## Implementation

The Verhoeff algorithm implemented using three tables: a multiplication table D, a permutation table P, and an inverse table INV. All tables are precomputed.

## Example

    Verhoeff.checksum_of 12345 # => "123451"
    Verhoeff.checksum_of 54321 # => "543217"
    Verhoeff.valid? 543217 # => true
    Verhoeff.valid? 543211 # => false

## Contributing to verhoeff

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Contributors

* Jay Phillips
* beawesomeinstead
* Stuart Glenn
* Gavin Heavyside

## References

  * Verhoeff, J. “Error Detecting Decimal Codes”, Mathematical Centre Tract 29, The Mathematical Centre, Amsterdam, 1969.
