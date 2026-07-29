import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure PaleoclimateProxyData where
  iceCoreDelta18O : Type
  marineSedimentDelta13C : Type
  pollenRecord : Type
  seaLevelProxy : Type

structure PaleoclimateProxyEvidence (P : PaleoclimateProxyData) where
  iceCoreDelta18OValid : P.iceCoreDelta18O
  marineSedimentDelta13CValid : P.marineSedimentDelta13C
  pollenRecordValid : P.pollenRecord
  seaLevelProxyValid : P.seaLevelProxy

def PaleoclimateProxyClosed (P : PaleoclimateProxyData) : Prop :=
  P.iceCoreDelta18O ∧ P.marineSedimentDelta13C ∧ P.pollenRecord ∧ P.seaLevelProxy

theorem paleoclimate_proxy_closed_from_evidence (P : PaleoclimateProxyData) (E : PaleoclimateProxyEvidence P) :
    PaleoclimateProxyClosed P := by
  exact And.intro E.iceCoreDelta18OValid
    (And.intro E.marineSedimentDelta13CValid
      (And.intro E.pollenRecordValid E.seaLevelProxyValid))

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse