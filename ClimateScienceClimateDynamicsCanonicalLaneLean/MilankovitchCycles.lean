import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure MilankovitchCyclesPackage where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ → ℝ
  orbitalParameters : Prop
  insolationComputed : Prop

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.orbitalParameters ∧ M.insolationComputed

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse