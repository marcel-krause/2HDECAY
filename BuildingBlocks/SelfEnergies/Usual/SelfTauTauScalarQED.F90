double complex function SelfTauTauScalarQEDUsual(x)
 use constants
 implicit none
#include "looptools.h"
 double precision, intent(in) :: x
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(1)

 amplitudes(1) = (-0.125D0*EL2*(-1.D0 + 2.D0*B0(x, 0.D0, ML2)))/PI2

  totalAmplitude = (0D0,0D0)
 do j=1,1
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do
 SelfTauTauScalarQEDUsual = totalAmplitude
end function SelfTauTauScalarQEDUsual

