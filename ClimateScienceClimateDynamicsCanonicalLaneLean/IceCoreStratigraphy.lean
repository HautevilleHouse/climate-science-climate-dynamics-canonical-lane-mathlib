import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure IceCoreData where
  depthProfile : Type
  gasFraction : Type
  temperatureReconstruction : Type
  accumulationRate : Type

structure IceCoreEvidence (I : IceCoreData) where
  depthProfileMeasured : I.depthProfile
  gasFractionValid : I.gasFraction
  temperatureReconstructionValid : I.temperatureReconstruction
  accumulationRateDerived : I.accumulationRate

def IceCoreClosed (I : IceCoreData) : Prop :=
  I.depthProfile ∧ I.gasFraction ∧ I.temperatureReconstruction ∧ I.accumulationRate

theorem ice_core_closed_from_evidence (I : IceCoreData) (E : IceCoreEvidence I) :
    IceCoreClosed I := by
  exact And.intro E.depthProfileMeasured
    (And.intro E.gasFractionValid
      (And.intro E.temperatureReconstructionValid E.accumulationRateDerived))

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse