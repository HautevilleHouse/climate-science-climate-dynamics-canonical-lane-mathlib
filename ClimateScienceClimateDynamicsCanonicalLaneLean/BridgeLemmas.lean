import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateDynamicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.closureValid

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.closureValid

end ClimateScienceClimateDynamicsCanonicalLaneLean
end HautevilleHouse
