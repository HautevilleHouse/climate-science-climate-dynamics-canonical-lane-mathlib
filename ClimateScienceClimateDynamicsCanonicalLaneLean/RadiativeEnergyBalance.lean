import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

structure RadiativeEnergyBalanceModel where
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  surfaceTemperature : ℝ → ℝ
  outgoingLongwaveRadiation : ℝ → ℝ
  netRadiation : Prop
  equilibriumTemperature : Prop

structure RadiativeEnergyBalanceEvidence (M : RadiativeEnergyBalanceModel) where
  netRadiationClosed : M.netRadiation
  equilibriumTemperatureClosed : M.equilibriumTemperature

def RadiativeEnergyBalanceClosed (M : RadiativeEnergyBalanceModel) : Prop :=
  M.netRadiation ∧ M.equilibriumTemperature

theorem radiative_energy_balance_closed_from_evidence
    (M : RadiativeEnergyBalanceModel) (E : RadiativeEnergyBalanceEvidence M) :
    RadiativeEnergyBalanceClosed M := by
  exact And.intro E.netRadiationClosed E.equilibriumTemperatureClosed

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse