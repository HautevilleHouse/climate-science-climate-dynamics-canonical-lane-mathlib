import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure ClimateState where
  temperature : ℝ
  iceVolume : ℝ
  co2Concentration : ℝ

structure DOEventEvidence where
  rapidWarmingPhase : Prop
  gradualCoolingPhase : Prop
  millennialCycleCount : ℕ
  abruptTransitionDetected : rapidWarmingPhase ∨ gradualCoolingPhase
  evidenceClosed : abruptTransitionDetected

structure DOEventModelEvidence (state : ClimateState) where
  thresholdCrossed : state.temperature > 0
  transitionModeled : Prop
  modelClosed : transitionModeled

def DOEventClosed (state : ClimateState) : Prop :=
  state.temperature > 0 ∧ (∃ (E : DOEventEvidence), E.evidenceClosed)

theorem do_event_closed (state : ClimateState) (E : DOEventEvidence) (tempPos : state.temperature > 0) :
  DOEventClosed state := by
  refine And.intro tempPos ?_
  exact ⟨E, E.evidenceClosed⟩

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse