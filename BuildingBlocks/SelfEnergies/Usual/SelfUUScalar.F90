double complex function SelfUUScalarUsual(x)
 use constants
 implicit none
#include "looptools.h"
 double precision, intent(in) :: x
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(15)

 amplitudes(1) = (0.015625D0*CA2*EL2*MU2*B0(x, Mh02, MU2))/(MW2*PI2*SB2*SW2)

 amplitudes(2) = (0.015625D0*EL2*MU2*SA2*B0(x, MHH2, MU2))/(MW2*PI2*SB2*SW2)

 amplitudes(3) = (-0.015625D0*EL2*MU2*B0(x, MA02, MU2))/(MW2*PI2*SW2*TB2)

 amplitudes(4) = (-0.015625D0*EL2*MU2*B0(x, MU2, MZ2))/(MW2*PI2*SW2)

 amplitudes(5) = (0.03125D0*CKM11*CKMC11*EL2*MD2*Yuk3*B0(x, MD2, MHp2))/(MW2*PI2*SW2*TB)

 amplitudes(6) = (0.03125D0*CKM12*CKMC12*EL2*MS2*Yuk3*B0(x, MHp2, MS2))/(MW2*PI2*SW2*TB)

 amplitudes(7) = (0.03125D0*CKM13*CKMC13*EL2*MB2*Yuk3*B0(x, MB2, MHp2))/(MW2*PI2*SW2*TB)

 amplitudes(8) = (-0.03125D0*CKM11*CKMC11*EL2*MD2*B0(x, MD2, MW2))/(MW2*PI2*SW2)

 amplitudes(9) = (-0.03125D0*CKM12*CKMC12*EL2*MS2*B0(x, MS2, MW2))/(MW2*PI2*SW2)

 amplitudes(10) = (-0.03125D0*CKM13*CKMC13*EL2*MB2*B0(x, MB2, MW2))/(MW2*PI2*SW2)

 amplitudes(11) = (-0.05555555555555555D0*EL2*(-1.D0 + 2.D0*B0(x, 0.D0, MU2)))/PI2

 amplitudes(12) = (-0.013888888888888888D0*EL2*(-3.D0 + 4.D0*SW2)*(-1.D0 + 2.D0*B0(x, MU2, MZ2)))/(CW2*PI2)

 amplitudes(13) = 0.D0

 amplitudes(14) = 0.D0

 amplitudes(15) = 0.D0

  totalAmplitude = (0D0,0D0)
 do j=1,15
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do
 SelfUUScalarUsual = totalAmplitude
end function SelfUUScalarUsual

