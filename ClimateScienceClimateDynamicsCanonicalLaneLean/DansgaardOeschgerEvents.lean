import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure DansgaardOeschgerEventSequence where
  abruptWarmingAmplitude : ℝ
  coolingTrendDuration : ℝ
  recurrenceInterval : ℝ
  bipolarSeesaw : Prop
  amocSwitch : Prop
  atlanticMeridionalOverturningCirculationState : Prop

structure DansgaardOeschgerEventEvidence (D : DansgaardOeschgerEventSequence) where
  bipolarSeesawClosed : D.bipolarSeesaw
  amocSwitchClosed : D.amocSwitch
  atlanticMeridionalOverturningCirculationStateClosed : D.atlanticMeridionalOverturningCirculationState

def DansgaardOeschgerEventClosed (D : DansgaardOeschgerEventSequence) : Prop :=
  D.bipolarSeesaw ∧ D.amocSwitch ∧ D.atlanticMeridionalOverturningCirculationState

theorem dansgaard_oeschger_event_closed_from_evidence
    (D : DansgaardOeschgerEventSequence) (E : DansgaardOeschgerEventEvidence D) :
    DansgaardOeschgerEventClosed D := by
  exact And.intro E.bipolarSeesawClosed
    (And.intro E.amocSwitchClosed E.atlanticMeridionalOverturningCirculationStateClosed)

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse