import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure ClimateAdmittedObject where
  climateState : ClimateState
  orbitalParams : OrbitalParameterSet
  iceCoreSample : CoreSample
  energyInput : EnergyBalanceInput
  iceSheet : IceSheetGeometry

structure ClimateAdmissibleClass where
  object : ClimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse