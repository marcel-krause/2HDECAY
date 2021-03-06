double complex function SelfDBScalarAlter(x)
 use constants
 implicit none
#include "looptools.h"
 double precision, intent(in) :: x
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(9)

 amplitudes(1) = (0.03125D0*CKM11*CKMC13*EL2*MU2*Yuk3*B0(x, MHp2, MU2))/(MW2*PI2*SW2*TB)

 amplitudes(2) = (0.03125D0*CKM21*CKMC23*EL2*MC2*Yuk3*B0(x, MC2, MHp2))/(MW2*PI2*SW2*TB)

 amplitudes(3) = (0.03125D0*CKM31*CKMC33*EL2*MT2*Yuk3*B0(x, MHp2, MT2))/(MW2*PI2*SW2*TB)

 amplitudes(4) = (-0.03125D0*CKM11*CKMC13*EL2*MU2*B0(x, MU2, MW2))/(MW2*PI2*SW2)

 amplitudes(5) = (-0.03125D0*CKM21*CKMC23*EL2*MC2*B0(x, MC2, MW2))/(MW2*PI2*SW2)

 amplitudes(6) = (-0.03125D0*CKM31*CKMC33*EL2*MT2*B0(x, MT2, MW2))/(MW2*PI2*SW2)

 amplitudes(7) = 0.D0

 amplitudes(8) = 0.D0

 amplitudes(9) = 0.D0

  totalAmplitude = (0D0,0D0)
 do j=1,9
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do
 SelfDBScalarAlter = totalAmplitude
end function SelfDBScalarAlter

