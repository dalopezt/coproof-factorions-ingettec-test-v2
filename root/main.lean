import «upper_bound».«main»
import «finite_verification».«main»
import Definitions
-- Sub-goal 1: Every fixed point is bounded by 2540160



theorem root : {n : ℕ | n = digitFactorialSum n} = {1, 2, 145, 40585} := by
  ext n
  simp only [Set.mem_setOf_eq, Set.mem_insert_iff, Set.mem_singleton_iff]
  constructor
  · intro h
    have hbound := upper_bound n h
    exact (finite_verification n hbound).mp h
  · intro h
    have hbound : n ≤ 2540160 := by
      rcases h with rfl | rfl | rfl | rfl <;> norm_num
    exact (finite_verification n hbound).mpr h
