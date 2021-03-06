double complex function SelfCTLeftAlter(x)
 use constants
 implicit none
#include "looptools.h"
 double precision, intent(in) :: x
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(9)

 amplitudes(1) = (0.015625D0*CKM31*CKMC21*EL2*(-1.D0*MD2*TB2*A0(MD2)*DBLE(Yuk3**INT(2.D0)) + MD2*TB2*A0(MHp2)*DBLE(Yuk3**INT(2.D0&
  &)) - 1.D0*MD2*MHp2*TB2*B0(x, MD2, MHp2)*DBLE(Yuk3**INT(2.D0)) + MD2*TB2*x*B0(x, MD2, MHp2)*DBLE(Yuk3**INT(2.D0)) + TB2*B0(x, M&
  &D2, MHp2)*DBLE(MD**INT(4.D0))*DBLE(Yuk3**INT(2.D0))))/(MW2*PI2*SW2*TB2*x)

 amplitudes(2) = (0.015625D0*CKM32*CKMC22*EL2*(MS2*TB2*A0(MHp2)*DBLE(Yuk3**INT(2.D0)) - 1.D0*MS2*TB2*A0(MS2)*DBLE(Yuk3**INT(2.D0)&
  &) - 1.D0*MHp2*MS2*TB2*B0(x, MHp2, MS2)*DBLE(Yuk3**INT(2.D0)) + MS2*TB2*x*B0(x, MHp2, MS2)*DBLE(Yuk3**INT(2.D0)) + TB2*B0(x, MH&
  &p2, MS2)*DBLE(MS**INT(4.D0))*DBLE(Yuk3**INT(2.D0))))/(MW2*PI2*SW2*TB2*x)

 amplitudes(3) = (0.015625D0*CKM33*CKMC23*EL2*(-1.D0*MB2*TB2*A0(MB2)*DBLE(Yuk3**INT(2.D0)) + MB2*TB2*A0(MHp2)*DBLE(Yuk3**INT(2.D0&
  &)) - 1.D0*MB2*MHp2*TB2*B0(x, MB2, MHp2)*DBLE(Yuk3**INT(2.D0)) + MB2*TB2*x*B0(x, MB2, MHp2)*DBLE(Yuk3**INT(2.D0)) + TB2*B0(x, M&
  &B2, MHp2)*DBLE(MB**INT(4.D0))*DBLE(Yuk3**INT(2.D0))))/(MW2*PI2*SW2*TB2*x)

 amplitudes(4) = (0.015625D0*CKM31*CKMC21*EL2*(-1.D0*MD2*A0(MD2) + MD2*A0(MW2) - 1.D0*MD2*MW2*B0(x, MD2, MW2) + MD2*x*B0(x, MD2, &
  &MW2) + B0(x, MD2, MW2)*DBLE(MD**INT(4.D0))))/(MW2*PI2*SW2*x)

 amplitudes(5) = (0.015625D0*CKM32*CKMC22*EL2*(-1.D0*MS2*A0(MS2) + MS2*A0(MW2) - 1.D0*MS2*MW2*B0(x, MS2, MW2) + MS2*x*B0(x, MS2, &
  &MW2) + B0(x, MS2, MW2)*DBLE(MS**INT(4.D0))))/(MW2*PI2*SW2*x)

 amplitudes(6) = (0.015625D0*CKM33*CKMC23*EL2*(-1.D0*MB2*A0(MB2) + MB2*A0(MW2) - 1.D0*MB2*MW2*B0(x, MB2, MW2) + MB2*x*B0(x, MB2, &
  &MW2) + B0(x, MB2, MW2)*DBLE(MB**INT(4.D0))))/(MW2*PI2*SW2*x)

 amplitudes(7) = (0.03125D0*CKM31*CKMC21*EL2*(-1.D0*x - 1.D0*A0(MD2) + A0(MW2) + MD2*B0(x, MD2, MW2) - 1.D0*MW2*B0(x, MD2, MW2) +&
  & x*B0(x, MD2, MW2)))/(PI2*SW2*x)

 amplitudes(8) = (0.03125D0*CKM32*CKMC22*EL2*(-1.D0*x - 1.D0*A0(MS2) + A0(MW2) + MS2*B0(x, MS2, MW2) - 1.D0*MW2*B0(x, MS2, MW2) +&
  & x*B0(x, MS2, MW2)))/(PI2*SW2*x)

 amplitudes(9) = (0.03125D0*CKM33*CKMC23*EL2*(-1.D0*x - 1.D0*A0(MB2) + A0(MW2) + MB2*B0(x, MB2, MW2) - 1.D0*MW2*B0(x, MB2, MW2) +&
  & x*B0(x, MB2, MW2)))/(PI2*SW2*x)

  totalAmplitude = (0D0,0D0)
 do j=1,9
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do
 SelfCTLeftAlter = totalAmplitude
end function SelfCTLeftAlter

