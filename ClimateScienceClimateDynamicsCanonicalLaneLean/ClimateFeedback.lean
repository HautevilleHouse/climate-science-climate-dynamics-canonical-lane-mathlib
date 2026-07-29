import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure ClimateFeedbackPackage where
  feedbackType : String
  gain : ℝ
  referenceTemperature : ℝ
  responseTemperature : ℝ
  feedbackLoopsModeled : Prop
  gainCalculated : Prop

structure ClimateFeedbackEvidence (C : ClimateFeedbackPackage) where
  feedbackLoopsModeledClosed : C.feedbackLoopsModeled
  gainCalculatedClosed : C.gainCalculated

def ClimateFeedbackClosed (C : ClimateFeedbackPackage) : Prop :=
  C.feedbackLoopsModeled ∧ C.gainCalculated

theorem climate_feedback_closed_from_evidence (C : ClimateFeedbackPackage)
    (Ev : ClimateFeedbackEvidence C) : ClimateFeedbackClosed C := by
  exact And.intro Ev.feedbackLoopsModeledClosed Ev.gainCalculatedClosed

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse
