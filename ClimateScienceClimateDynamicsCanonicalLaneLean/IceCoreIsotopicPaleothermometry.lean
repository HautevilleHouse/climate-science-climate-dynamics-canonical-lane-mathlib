import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure CoreSample where
  depth : ℝ
  delta18O : ℝ
  deltaDeuterium : ℝ
  ageEstimate : ℝ
  depthPositive : depth ≥ 0

structure IsotopicFractionationEvidence where
  temperatureAnomaly : ℝ
  fractionationCoefficient : ℝ
  calibrationCurve : Prop
  calibrationClosed : calibrationCurve

structure PaleotemperatureEvidence (core : CoreSample) where
  temperatureReconstructed : ℝ
  conversionRelation : delta18O_core core → ℝ
  conversionClosed : conversionRelation core ≠ 0
  evidenceClosed : conversionClosed

def delta18O_core (core : CoreSample) : ℝ :=
  core.delta18O

def PaleotemperatureClosed (core : CoreSample) : Prop :=
  core.depthPositive ∧ core.ageEstimate ≥ 0 ∧
  (∃ (E : PaleotemperatureEvidence core), E.evidenceClosed)

theorem paleotemperature_closed (core : CoreSample) (E : PaleotemperatureEvidence core) :
  PaleotemperatureClosed core := by
  refine And.intro core.depthPositive (And.intro (by
    have : 0 ≤ core.ageEstimate := by
      exact core.ageEstimate_ge_zero
    exact this) ?_)
  · exact ⟨E, E.evidenceClosed⟩

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse