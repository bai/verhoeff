# Verhoeff ![Build status](http://travis-ci.org/bai/verhoeff.png)

This is pure Ruby (1.9 compatible) implementation of the Verchoeff algorithm.

## Trivia
The Verhoeff algorithm uses the properties of D5 (the dihedral group of order 10) — a non-commutative system of operations on ten elements, corresponding to the results of rotating or reflecting (flipping) a regular pentagon.

## Implementation
The Verhoeff algorithm implemented using three tables: a multiplication table D, a permutation table P, and an inverse table INV. All tables are precomputed.

## Example
    Verhoeff.checkum_of 12345 # => "123451"
    Verhoeff.checkum_of 54321 # => "543217"
    Verhoeff.valid? 543217 # => true
    Verhoeff.valid? 543211 # => false

## References
  * Verhoeff, J. “Error Detecting Decimal Codes”, Mathematical Centre Tract 29, The Mathematical Centre, Amsterdam, 1969.
