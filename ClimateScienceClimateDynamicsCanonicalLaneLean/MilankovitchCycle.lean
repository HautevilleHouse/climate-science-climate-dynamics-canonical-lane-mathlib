import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure MilankovitchCyclePackage where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolation : ℝ
  orbitalForcing : Prop
  insolationComputed : Prop

structure MilankovitchCycleEvidence (M : MilankovitchCyclePackage) where
  orbitalForcingClosed : M.orbitalForcing
  insolationComputedClosed : M.insolationComputed

def MilankovitchCycleClosed (M : MilankovitchCyclePackage) : Prop :=
  M.orbitalForcing ∧ M.insolationComputed

theorem milankovitch_cycle_closed_from_evidence (M : MilankovitchCyclePackage)
    (Ev : MilankovitchCycleEvidence M) : MilankovitchCycleClosed M := by
  exact And.intro Ev.orbitalForcingClosed Ev.insolationComputedClosed

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse
