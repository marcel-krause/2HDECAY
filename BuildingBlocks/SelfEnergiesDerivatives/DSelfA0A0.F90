double complex function DSelfA0A0(x)
 use constants
 implicit none
#include "looptools.h"
 double precision, intent(in) :: x
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(27)

 amplitudes(1) = 0.D0

 amplitudes(2) = 0.D0

 amplitudes(3) = 0.D0

 amplitudes(4) = 0.D0

 amplitudes(5) = 0.D0

 amplitudes(6) = 0.D0

 amplitudes(7) = 0.D0

 amplitudes(8) = 0.D0

 amplitudes(9) = (-0.03125D0*EL2*ME2*(-1.D0*B0(x, ME2, ME2) - 1.D0*x*DB0(x, ME2, ME2))*DBLE(Yuk6**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(10) = (-0.03125D0*EL2*MM2*(-1.D0*B0(x, MM2, MM2) - 1.D0*x*DB0(x, MM2, MM2))*DBLE(Yuk6**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(11) = (-0.03125D0*EL2*ML2*(-1.D0*B0(x, ML2, ML2) - 1.D0*x*DB0(x, ML2, ML2))*DBLE(Yuk6**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(12) = (-0.09375D0*EL2*MU2*(-1.D0*B0(x, MU2, MU2) - 1.D0*x*DB0(x, MU2, MU2)))/(MW2*PI2*SW2*TB2)

 amplitudes(13) = (-0.09375D0*EL2*MC2*(-1.D0*B0(x, MC2, MC2) - 1.D0*x*DB0(x, MC2, MC2)))/(MW2*PI2*SW2*TB2)

 amplitudes(14) = (-0.09375D0*EL2*MT2*(-1.D0*B0(x, MT2, MT2) - 1.D0*x*DB0(x, MT2, MT2)))/(MW2*PI2*SW2*TB2)

 amplitudes(15) = (-0.09375D0*EL2*MD2*(-1.D0*B0(x, MD2, MD2) - 1.D0*x*DB0(x, MD2, MD2))*DBLE(Yuk3**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(16) = (-0.09375D0*EL2*MS2*(-1.D0*B0(x, MS2, MS2) - 1.D0*x*DB0(x, MS2, MS2))*DBLE(Yuk3**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(17) = (-0.09375D0*EL2*MB2*(-1.D0*B0(x, MB2, MB2) - 1.D0*x*DB0(x, MB2, MB2))*DBLE(Yuk3**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(18) = (0.015625D0*DB0(x, MA02, Mh02)*DBLE((EL2*(-2.D0*MA02 + Mh02)*S2B*SBA + CAB*(-2.D0*EL2*Mh02 + 4.D0*Lambda5*MW2*S&
  &W2))**INT(2.D0)))/ (EL2*MW2*PI2*S2B2*SW2)

 amplitudes(19) = (0.015625D0*DB0(x, MA02, MHH2)*DBLE((CBA*EL2*(2.D0*MA02 - 1.D0*MHH2)*S2B + 2.D0*SAB*(EL2*MHH2 - 2.D0*Lambda5*MW&
  &2*SW2))**INT(2.D0)))/ (EL2*MW2*PI2*S2B2*SW2)

 amplitudes(20) = (0.015625D0*CBA2*EL2*DB0(x, Mh02, MZ2)*DBLE((MA02 - 1.D0*Mh02)**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(21) = (0.015625D0*EL2*SBA2*DB0(x, MHH2, MZ2)*DBLE((MA02 - 1.D0*MHH2)**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(22) = (0.015625D0*EL2*DB0(x, MHp2, MW2)*DBLE((MA02 - 1.D0*MHp2)**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(23) = (0.015625D0*EL2*DB0(x, MHp2, MW2)*DBLE((MA02 - 1.D0*MHp2)**INT(2.D0)))/(MW2*PI2*SW2)

 amplitudes(24) = (0.015625D0*CBA2*EL2*(-2.D0*B0(x, Mh02, MZ2) + (-2.D0*Mh02 + MZ2 - 2.D0*x)*DB0(x, Mh02, MZ2)))/(CW2*PI2*SW2)

 amplitudes(25) = (0.015625D0*EL2*SBA2*(-2.D0*B0(x, MHH2, MZ2) + (-2.D0*MHH2 + MZ2 - 2.D0*x)*DB0(x, MHH2, MZ2)))/(CW2*PI2*SW2)

 amplitudes(26) = (0.015625D0*EL2*(-2.D0*B0(x, MHp2, MW2) + (-2.D0*MHp2 + MW2 - 2.D0*x)*DB0(x, MHp2, MW2)))/(PI2*SW2)

 amplitudes(27) = (0.015625D0*EL2*(-2.D0*B0(x, MHp2, MW2) + (-2.D0*MHp2 + MW2 - 2.D0*x)*DB0(x, MHp2, MW2)))/(PI2*SW2)

  totalAmplitude = (0D0,0D0)
 do j=1,27
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do
 DSelfA0A0 = totalAmplitude
end function DSelfA0A0

