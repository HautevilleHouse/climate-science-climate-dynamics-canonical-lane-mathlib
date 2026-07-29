import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure IceCoreProxyRecord where
  delta18O : ℝ → ℝ
  deltaD : ℝ → ℝ
  deuteriumExcess : ℝ → ℝ
  temperatureReconstruction : ℝ → ℝ
  fractionationFactor : Prop
  temperatureCalibration : Prop
  ageModel : Prop

structure IsotopicPaleothermometryEvidence (I : IceCoreProxyRecord) where
  fractionationFactorClosed : I.fractionationFactor
  temperatureCalibrationClosed : I.temperatureCalibration
  ageModelClosed : I.ageModel

def IsotopicPaleothermometryClosed (I : IceCoreProxyRecord) : Prop :=
  I.fractionationFactor ∧ I.temperatureCalibration ∧ I.ageModel

theorem isotopic_paleothermometry_closed_from_evidence
    (I : IceCoreProxyRecord) (E : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  exact And.intro E.fractionationFactorClosed
    (And.intro E.temperatureCalibrationClosed E.ageModelClosed)

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse