double complex function DSelfNeuTauNeuTauLeft(x)
 use constants
 implicit none
#include "looptools.h"
 double precision, intent(in) :: x
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(4)

 amplitudes(1) = (-0.03125D0*EL2*ML2*DB1(x, ML2, MHp2)*DBLE(Yuk3**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(2) = (-0.03125D0*EL2*ML2*DB1(x, ML2, GaugeXiW*MW2))/(MW2*PI2*SW2)

 amplitudes(3) = (-0.015625D0*EL2*(-1.D0*B0(x, 0.D0, MZ2) + B0(x, 0.D0, GaugeXiZ*MZ2) - 1.D0*B1(x, 0.D0, MZ2) + B1(x, 0.D0, Gauge&
  &XiZ*MZ2) + (MZ2 - 1.D0*x)*DB0(x, 0.D0, MZ2) + (-1.D0*GaugeXiZ*MZ2 + x)*DB0(x, 0.D0, GaugeXiZ*MZ2) + 2.D0*MZ2*DB1(x, 0.D0, MZ2)&
  & - 1.D0*x*DB1(x, 0.D0, MZ2) + x*DB1(x, 0.D0, GaugeXiZ*MZ2)))/(CW2*MZ2*PI2*SW2)

 amplitudes(4) = (-0.03125D0*EL2*(-1.D0*B0(x, ML2, MW2) + B0(x, ML2, GaugeXiW*MW2) - 1.D0*B1(x, ML2, MW2) + B1(x, ML2, GaugeXiW*M&
  &W2) + (ML2 + MW2 - 1.D0*x)*DB0(x, ML2, MW2) - 1.D0*(ML2 + GaugeXiW*MW2 - 1.D0*x)*DB0(x, ML2, GaugeXiW*MW2) + ML2*DB1(x, ML2, M&
  &W2) + 2.D0*MW2*DB1(x, ML2, MW2) - 1.D0*x*DB1(x, ML2, MW2) - 1.D0*ML2*DB1(x, ML2, GaugeXiW*MW2) + x*DB1(x, ML2, GaugeXiW*MW2)))&
  &/(MW2*PI2*SW2)

  totalAmplitude = (0D0,0D0)
 do j=1,4
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do
 DSelfNeuTauNeuTauLeft = totalAmplitude
end function DSelfNeuTauNeuTauLeft

