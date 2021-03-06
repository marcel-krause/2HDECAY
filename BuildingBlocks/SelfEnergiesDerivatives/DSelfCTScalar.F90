double complex function DSelfCTScalar(x)
 use constants
 implicit none
#include "looptools.h"
 double precision, intent(in) :: x
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(9)

 amplitudes(1) = (0.03125D0*CKM31*CKMC21*EL2*MD2*Yuk3*DB0(x, MD2, MHp2))/(MW2*PI2*SW2*TB)

 amplitudes(2) = (0.03125D0*CKM32*CKMC22*EL2*MS2*Yuk3*DB0(x, MHp2, MS2))/(MW2*PI2*SW2*TB)

 amplitudes(3) = (0.03125D0*CKM33*CKMC23*EL2*MB2*Yuk3*DB0(x, MB2, MHp2))/(MW2*PI2*SW2*TB)

 amplitudes(4) = (-0.03125D0*CKM31*CKMC21*EL2*MD2*DB0(x, MD2, MW2))/(MW2*PI2*SW2)

 amplitudes(5) = (-0.03125D0*CKM32*CKMC22*EL2*MS2*DB0(x, MS2, MW2))/(MW2*PI2*SW2)

 amplitudes(6) = (-0.03125D0*CKM33*CKMC23*EL2*MB2*DB0(x, MB2, MW2))/(MW2*PI2*SW2)

 amplitudes(7) = 0.D0

 amplitudes(8) = 0.D0

 amplitudes(9) = 0.D0

  totalAmplitude = (0D0,0D0)
 do j=1,9
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do
 DSelfCTScalar = totalAmplitude
end function DSelfCTScalar

