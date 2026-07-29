import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure PaleoclimateProxyPackage where
  proxyType : String
  measurement : ℝ
  calibrationEquation : ℝ
  uncertainty : ℝ
  proxyCalibrated : Prop
  climateSignalExtracted : Prop

structure PaleoclimateProxyEvidence (P : PaleoclimateProxyPackage) where
  proxyCalibratedClosed : P.proxyCalibrated
  climateSignalExtractedClosed : P.climateSignalExtracted

def PaleoclimateProxyClosed (P : PaleoclimateProxyPackage) : Prop :=
  P.proxyCalibrated ∧ P.climateSignalExtracted

theorem paleoclimate_proxy_closed_from_evidence (P : PaleoclimateProxyPackage)
    (Ev : PaleoclimateProxyEvidence P) : PaleoclimateProxyClosed P := by
  exact And.intro Ev.proxyCalibratedClosed Ev.climateSignalExtractedClosed

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse
