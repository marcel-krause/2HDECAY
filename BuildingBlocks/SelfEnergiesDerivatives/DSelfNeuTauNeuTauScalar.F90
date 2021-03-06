double complex function DSelfNeuTauNeuTauScalar(x)
 use constants
 implicit none
#include "looptools.h"
 double precision, intent(in) :: x
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(4)

 amplitudes(1) = 0.D0

 amplitudes(2) = 0.D0

 amplitudes(3) = 0.D0

 amplitudes(4) = 0.D0

  totalAmplitude = (0D0,0D0)
 do j=1,4
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do
 DSelfNeuTauNeuTauScalar = totalAmplitude
end function DSelfNeuTauNeuTauScalar

