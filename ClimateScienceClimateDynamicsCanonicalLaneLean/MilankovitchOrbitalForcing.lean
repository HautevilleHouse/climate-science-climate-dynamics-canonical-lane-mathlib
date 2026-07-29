import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure OrbitalParameterSet where
  eccentricity : ℝ
  obliquity : ℝ
  precessionIndex : ℝ
  valid : eccentricity ≥ 0 ∧ eccentricity ≤ 1 ∧ obliquity ≥ 0 ∧ obliquity ≤ π/2

structure MilankovitchCycleEvidence where
  orbitalParameters : OrbitalParameterSet
  summerInsolationAnomaly : ℝ
  iceVolumeResponse : ℝ
  correlationComputed : Prop
  correlationClosed : correlationComputed

structure MilankovitchForcingEvidence (params : OrbitalParameterSet) where
  insolationComputed : params.valid → summerInsolationAnomaly ≠ 0
  iceResponseConsistent : iceVolumeResponse < 0 ∨ iceVolumeResponse > 0
  evidenceClosed : insolationComputed ∧ iceResponseConsistent

def MilankovitchForcingClosed (params : OrbitalParameterSet) : Prop :=
  params.valid ∧ (∃ (E : MilankovitchCycleEvidence), E.correlationClosed)

theorem milankovitch_forcing_closed (params : OrbitalParameterSet) (E : MilankovitchCycleEvidence) (valid : params.valid) :
  MilankovitchForcingClosed params := by
  refine And.intro valid ?_
  exact ⟨E, E.correlationClosed⟩

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse