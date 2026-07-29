import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure DansgaardOeschgerData where
  rapidWarming : Type
  gradualCooling : Type
  amplitude : Type
  recurrenceInterval : Type

structure DansgaardOeschgerEvidence (D : DansgaardOeschgerData) where
  rapidWarmingObserved : D.rapidWarming
  gradualCoolingObserved : D.gradualCooling
  amplitudeMeasured : D.amplitude
  recurrenceIntervalComputed : D.recurrenceInterval

def DansgaardOeschgerClosed (D : DansgaardOeschgerData) : Prop :=
  D.rapidWarming ∧ D.gradualCooling ∧ D.amplitude ∧ D.recurrenceInterval

theorem dansgaard_oeschger_closed_from_evidence (D : DansgaardOeschgerData) (E : DansgaardOeschgerEvidence D) :
    DansgaardOeschgerClosed D := by
  exact And.intro E.rapidWarmingObserved
    (And.intro E.gradualCoolingObserved
      (And.intro E.amplitudeMeasured E.recurrenceIntervalComputed))

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse