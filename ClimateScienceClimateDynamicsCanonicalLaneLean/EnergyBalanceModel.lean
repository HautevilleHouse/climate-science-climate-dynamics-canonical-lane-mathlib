import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  heatCapacity : ℝ
  surfaceTemperature : ℝ → ℝ
  radiativeBalanceEquation : Prop
  equilibriumTemperature : ℝ

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.radiativeBalanceEquation ∧ E.equilibriumTemperature > 0

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse