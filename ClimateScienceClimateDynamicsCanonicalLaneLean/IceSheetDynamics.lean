import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure IceSheetModel where
  iceVolume : ℝ → ℝ
  seaLevelContribution : ℝ → ℝ
  basalSlidingVelocity : ℝ → ℝ
  iceFlowLaw : Prop
  massBalance : Prop
  groundingLineMigration : Prop
  isostaticRebound : Prop

structure IceSheetDynamicsEvidence (I : IceSheetModel) where
  iceFlowLawClosed : I.iceFlowLaw
  massBalanceClosed : I.massBalance
  groundingLineMigrationClosed : I.groundingLineMigration
  isostaticReboundClosed : I.isostaticRebound

def IceSheetDynamicsClosed (I : IceSheetModel) : Prop :=
  I.iceFlowLaw ∧ I.massBalance ∧ I.groundingLineMigration ∧ I.isostaticRebound

theorem ice_sheet_dynamics_closed_from_evidence
    (I : IceSheetModel) (E : IceSheetDynamicsEvidence I) :
    IceSheetDynamicsClosed I := by
  exact And.intro E.iceFlowLawClosed
    (And.intro E.massBalanceClosed
      (And.intro E.groundingLineMigrationClosed E.isostaticReboundClosed))

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse