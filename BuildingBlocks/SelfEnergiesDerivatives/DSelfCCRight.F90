double complex function DSelfCCRight(x)
 use constants
 implicit none
#include "looptools.h"
 double precision, intent(in) :: x
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(15)

 amplitudes(1) = (0.0078125D0*CA2*EL2*MC2*(B0(x, MC2, Mh02) + MC2*DB0(x, MC2, Mh02) - 1.D0*Mh02*DB0(x, MC2, Mh02) + x*DB0(x, MC2,&
  & Mh02)))/ (MW2*PI2*SB2*SW2*x) - (0.0078125D0*CA2*EL2*MC2*(-1.D0*A0(MC2) + A0(Mh02) + MC2*B0(x, MC2, Mh02) - 1.D0*Mh02*B0(x, MC&
  &2, Mh02) + x*B0(x, MC2, Mh02))*DBLE(x**INT(-2.D0)))/(MW2*PI2*SB2*SW2)

 amplitudes(2) = (0.0078125D0*EL2*MC2*SA2*(B0(x, MC2, MHH2) + MC2*DB0(x, MC2, MHH2) - 1.D0*MHH2*DB0(x, MC2, MHH2) + x*DB0(x, MC2,&
  & MHH2)))/ (MW2*PI2*SB2*SW2*x) - (0.0078125D0*EL2*MC2*SA2*(-1.D0*A0(MC2) + A0(MHH2) + MC2*B0(x, MC2, MHH2) - 1.D0*MHH2*B0(x, MC&
  &2, MHH2) + x*B0(x, MC2, MHH2))*DBLE(x**INT(-2.D0)))/(MW2*PI2*SB2*SW2)

 amplitudes(3) = (0.0078125D0*EL2*MC2*(B0(x, MA02, MC2) - 1.D0*MA02*DB0(x, MA02, MC2) + MC2*DB0(x, MA02, MC2) + x*DB0(x, MA02, MC&
  &2)))/(MW2*PI2*SW2*TB2*x) - (0.0078125D0*EL2*MC2*(A0(MA02) - 1.D0*A0(MC2) - 1.D0*MA02*B0(x, MA02, MC2) + MC2*B0(x, MA02, MC2) +&
  & x*B0(x, MA02, MC2))*DBLE(x**INT(-2.D0)))/ (MW2*PI2*SW2*TB2)

 amplitudes(4) = (0.0078125D0*EL2*MC2*(B0(x, MC2, MZ2) + MC2*DB0(x, MC2, MZ2) - 1.D0*MZ2*DB0(x, MC2, MZ2) + x*DB0(x, MC2, MZ2)))/&
  &(MW2*PI2*SW2*x) - (0.0078125D0*EL2*MC2*(-1.D0*A0(MC2) + A0(MZ2) + MC2*B0(x, MC2, MZ2) - 1.D0*MZ2*B0(x, MC2, MZ2) + x*B0(x, MC2&
  &, MZ2))*DBLE(x**INT(-2.D0)))/ (MW2*PI2*SW2)

 amplitudes(5) = (0.015625D0*CKM21*CKMC21*EL2*(MC2*B0(x, MD2, MHp2) + MC2*MD2*DB0(x, MD2, MHp2) - 1.D0*MC2*MHp2*DB0(x, MD2, MHp2)&
  & + MC2*x*DB0(x, MD2, MHp2)))/ (MW2*PI2*SW2*TB2*x) - (0.015625D0*CKM21*CKMC21*EL2*(-1.D0*MC2*A0(MD2) + MC2*A0(MHp2) + MC2*MD2*B&
  &0(x, MD2, MHp2) - 1.D0*MC2*MHp2*B0(x, MD2, MHp2) + MC2*x*B0(x, MD2, MHp2))*DBLE(x**INT(-2.D0)))/(MW2*PI2*SW2*TB2)

 amplitudes(6) = (0.015625D0*CKM22*CKMC22*EL2*(MC2*B0(x, MHp2, MS2) - 1.D0*MC2*MHp2*DB0(x, MHp2, MS2) + MC2*MS2*DB0(x, MHp2, MS2)&
  & + MC2*x*DB0(x, MHp2, MS2)))/ (MW2*PI2*SW2*TB2*x) - (0.015625D0*CKM22*CKMC22*EL2*(MC2*A0(MHp2) - 1.D0*MC2*A0(MS2) - 1.D0*MC2*M&
  &Hp2*B0(x, MHp2, MS2) + MC2*MS2*B0(x, MHp2, MS2) + MC2*x*B0(x, MHp2, MS2))*DBLE(x**INT(-2.D0)))/(MW2*PI2*SW2*TB2)

 amplitudes(7) = (0.015625D0*CKM23*CKMC23*EL2*(MC2*B0(x, MB2, MHp2) + MB2*MC2*DB0(x, MB2, MHp2) - 1.D0*MC2*MHp2*DB0(x, MB2, MHp2)&
  & + MC2*x*DB0(x, MB2, MHp2)))/ (MW2*PI2*SW2*TB2*x) - (0.015625D0*CKM23*CKMC23*EL2*(-1.D0*MC2*A0(MB2) + MC2*A0(MHp2) + MB2*MC2*B&
  &0(x, MB2, MHp2) - 1.D0*MC2*MHp2*B0(x, MB2, MHp2) + MC2*x*B0(x, MB2, MHp2))*DBLE(x**INT(-2.D0)))/(MW2*PI2*SW2*TB2)

 amplitudes(8) = (0.015625D0*CKM21*CKMC21*EL2*(MC2*B0(x, MD2, MW2) + MC2*MD2*DB0(x, MD2, MW2) - 1.D0*MC2*MW2*DB0(x, MD2, MW2) + M&
  &C2*x*DB0(x, MD2, MW2)))/ (MW2*PI2*SW2*x) - (0.015625D0*CKM21*CKMC21*EL2*(-1.D0*MC2*A0(MD2) + MC2*A0(MW2) + MC2*MD2*B0(x, MD2, &
  &MW2) - 1.D0*MC2*MW2*B0(x, MD2, MW2) + MC2*x*B0(x, MD2, MW2))*DBLE(x**INT(-2.D0)))/(MW2*PI2*SW2)

 amplitudes(9) = (0.015625D0*CKM22*CKMC22*EL2*(MC2*B0(x, MS2, MW2) + MC2*MS2*DB0(x, MS2, MW2) - 1.D0*MC2*MW2*DB0(x, MS2, MW2) + M&
  &C2*x*DB0(x, MS2, MW2)))/ (MW2*PI2*SW2*x) - (0.015625D0*CKM22*CKMC22*EL2*(-1.D0*MC2*A0(MS2) + MC2*A0(MW2) + MC2*MS2*B0(x, MS2, &
  &MW2) - 1.D0*MC2*MW2*B0(x, MS2, MW2) + MC2*x*B0(x, MS2, MW2))*DBLE(x**INT(-2.D0)))/(MW2*PI2*SW2)

 amplitudes(10) = (0.015625D0*CKM23*CKMC23*EL2*(MC2*B0(x, MB2, MW2) + MB2*MC2*DB0(x, MB2, MW2) - 1.D0*MC2*MW2*DB0(x, MB2, MW2) + &
  &MC2*x*DB0(x, MB2, MW2)))/ (MW2*PI2*SW2*x) - (0.015625D0*CKM23*CKMC23*EL2*(-1.D0*MC2*A0(MB2) + MC2*A0(MW2) + MB2*MC2*B0(x, MB2,&
  & MW2) - 1.D0*MC2*MW2*B0(x, MB2, MW2) + MC2*x*B0(x, MB2, MW2))*DBLE(x**INT(-2.D0)))/(MW2*PI2*SW2)

 amplitudes(11) = (0.027777777777777776D0*EL2*(-1.D0 + B0(x, 0.D0, MC2) + MC2*DB0(x, 0.D0, MC2) + x*DB0(x, 0.D0, MC2)))/(PI2*x) -&
  & (0.027777777777777776D0*EL2*(-1.D0*x - 1.D0*A0(MC2) + MC2*B0(x, 0.D0, MC2) + x*B0(x, 0.D0, MC2))*DBLE(x**INT(-2.D0)))/PI2

 amplitudes(12) = (0.001736111111111111D0*EL2*(-16.D0*DBLE(SW**INT(4.D0)) + 16.D0*B0(x, MC2, MZ2)*DBLE(SW**INT(4.D0)) + 16.D0*MC2&
  &*DB0(x, MC2, MZ2)*DBLE(SW**INT(4.D0)) - 16.D0*MZ2*DB0(x, MC2, MZ2)*DBLE(SW**INT(4.D0)) + 16.D0*x*DB0(x, MC2, MZ2)*DBLE(SW**INT&
  &(4.D0))))/(CW2*PI2*SW2*x) - (0.001736111111111111D0*EL2*(-16.D0*x*DBLE(SW**INT(4.D0)) - 16.D0*A0(MC2)*DBLE(SW**INT(4.D0)) + 16&
  &.D0*A0(MZ2)*DBLE(SW**INT(4.D0)) + 16.D0*MC2*B0(x, MC2, MZ2)*DBLE(SW**INT(4.D0)) - 16.D0*MZ2*B0(x, MC2, MZ2)*DBLE(SW**INT(4.D0)&
  &) + 16.D0*x*B0(x, MC2, MZ2)*DBLE(SW**INT(4.D0)))* DBLE(x**INT(-2.D0)))/(CW2*PI2*SW2)

 amplitudes(13) = 0.D0

 amplitudes(14) = 0.D0

 amplitudes(15) = 0.D0

  totalAmplitude = (0D0,0D0)
 do j=1,15
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do
 DSelfCCRight = totalAmplitude
end function DSelfCCRight

