import Definitions

/--
Computation-backed certificate for node `finite_verification_computation`.
Program artifact: finite_verification_computation/computation.txt
Evidence artifact: finite_verification_computation/evidence.json
Evidence hash: 61aa263d1b544ace
Target: {"expected_factorions": [1, 2, 145, 40585]}
-/
axiom finite_verification_computation : ∀ n : ℕ, n ≤ 2540160 → (n = digitFactorialSum n ↔ n ∈ ({1, 2, 145, 40585} : Set ℕ))
