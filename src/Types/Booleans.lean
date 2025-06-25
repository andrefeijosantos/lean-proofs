/-!
 * author: @andrefeijosantos
 * last updated: Jun 2025
 *
 * boolean.lean
 *   Definition of a custom Boolean inductive type and basic logical
 *   operators (negation, conjunction, disjunction, etc.) implemented
 *   over it.
-/

namespace Booleans

-- Type Declaration: Boolean is an inductive type with exactly two values:
-- True and False, representing truth values.
inductive Boolean where
  | True
  | False
  deriving Repr, BEq

/-***********************************************************+
 *                     Basic Boolean Operators               *
 +**********************************************************-/

-- neg: Boolean → Boolean
-- Negates the boolean value of b.
def neg (b : Boolean) : Boolean :=
  match b with
  | Boolean.True => Boolean.False
  | Boolean.False => Boolean.True

-- and: Boolean → Boolean → Boolean
-- Logical AND operator: returns True only if both b1 and b2 are True.
def and (b1: Boolean) (b2: Boolean) : Boolean :=
  match b1 with
  | Boolean.False => Boolean.False
  | Boolean.True => b2

-- or: Boolean → Boolean → Boolean
-- Logical OR operator: returns True if either b1 or b2 is True.
def or (b1: Boolean) (b2: Boolean) : Boolean :=
  match b1 with
  | Boolean.True => Boolean.True
  | Boolean.False => b2

-- xor: Boolean → Boolean → Boolean
-- Exclusive OR operator: returns True if exactly one of b1 or b2 is True.
def xor (b1: Boolean) (b2: Boolean) : Boolean :=
  match b1 with
  | Boolean.True => neg b2
  | Boolean.False => b2

-- nand: Boolean → Boolean → Boolean
-- NAND operator: negation of AND, returns True unless both are True.
def nand (b1: Boolean) (b2: Boolean) : Boolean :=
  neg (and b1 b2)

-- nor: Boolean → Boolean → Boolean
-- NOR operator: negation of OR, returns True only if both are False.
def nor (b1: Boolean) (b2: Boolean) : Boolean :=
  neg (or b1 b2)

-- xnor: Boolean → Boolean → Boolean
-- XNOR operator: negation of XOR, returns True if both are equal.
def xnor (b1: Boolean) (b2: Boolean) : Boolean :=
  neg (xor b1 b2)

-- implies: Boolean → Boolean → Boolean
-- Logical implication: returns False only if b1 is True and b2 is False.
def implies (b1: Boolean) (b2: Boolean) : Boolean :=
  match b1 with
  | Boolean.False => Boolean.True
  | Boolean.True => b2

-- iff: Boolean → Boolean → Boolean
-- Logical biconditional: returns True if b1 and b2 have the same value.
def iff (b1: Boolean) (b2: Boolean) : Boolean :=
  match b1 with
  | Boolean.True => b2
  | Boolean.False => neg b2

end Booleans
