# Haskell List Arithmetic Bug

This repository demonstrates a bug related to type ambiguity and unexpected behavior in a Haskell program that defines instances for the `Eq` and `Num` type classes for lists.  The multiplication operator behaves unexpectedly, highlighting potential issues in defining custom instances for standard type classes.

## Bug Description:
The provided Haskell code defines instances of `Eq` and `Num` for lists. While addition works correctly, multiplication's behavior is counterintuitive. It performs element-wise multiplication rather than standard list multiplication, producing a list that differs from expected mathematical results.

## How to reproduce

1. Save the code in `bug.hs`
2. Compile and run using a Haskell compiler (GHC): `ghc bug.hs && ./bug`

The output will show that list addition works as expected, but list multiplication does not follow standard mathematical rules, exhibiting an unexpected and erroneous result.

## Solution

The solution involves refraining from implementing `Num` for lists. The natural number system's axioms of multiplication do not easily translate into list operations, and defining a compatible instance can be more complex and less intuitive than it seems.

See `bugSolution.hs` for demonstration of the correct (albeit simpler) approach.