import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure ClimateAdmittedObject where
  climateModelType : String
  evidenceBoundarySatisfied : Prop
  remainderRecorded : Prop
  conclusion : evidenceBoundarySatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : ClimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClimateWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse