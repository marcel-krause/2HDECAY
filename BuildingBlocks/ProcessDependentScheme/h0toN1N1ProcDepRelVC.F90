double complex function h0toN1N1ProcDepRelVC()
 use constants
 implicit none
#include "looptools.h"
 integer :: j
 double complex :: totalAmplitude
! The following analytic expressions are presented in DOI:10.1007/JHEP11(2018)104 (1808.03466 [hep-ph]).
! We kindly thank A. Denner, S. Dittmaier and J.-N. Lang for sending us these expressions in analytic form.

 totalAmplitude = &
&(0.0625D0*CB2*EL2*B0(0.D0, 0.D0, MW2))/(PI2*SW2) - (0.125D0*CB2*EL2*MW2*B0(0.D0, 0.D0, MW2))/(Mh02*PI2*SW2) + (0.125D0*CA*CB*EL2*&
  &MW2*SB*B0(0.D0, 0.D0, MW2))/(Mh02*PI2*SA*SW2) + (0.0625D0*EL2*SB2*B0(0.D0, 0.D0, MW2))/(PI2*SW2) + (0.03125D0*CB2*EL2*B0(0.D0,&
  & 0.D0, MZ2))/(CW2*PI2*SW2) + (0.03125D0*EL2*SB2*B0(0.D0, 0.D0, MZ2))/(CW2*PI2*SW2) - (0.015625D0*CA*CB*EL2*SB*B0(Mh02, MA02, M&
  &Z2))/(CW2*PI2*SA*SW2) - (0.015625D0*EL2*SB2*B0(Mh02, MA02, MZ2))/(CW2*PI2*SW2) - (0.03125D0*CA*CB*EL2*SB*B0(Mh02, MHp2, MW2))/&
  &(PI2*SA*SW2) - (0.03125D0*EL2*SB2*B0(Mh02, MHp2, MW2))/(PI2*SW2) - (0.03125D0*CB2*EL2*B0(Mh02, MW2, MW2))/(PI2*SW2) + (0.125D0&
  &*CB2*EL2*MW2*B0(Mh02, MW2, MW2))/(Mh02*PI2*SW2) + (0.03125D0*CA*CB*EL2*SB*B0(Mh02, MW2, MW2))/(PI2*SA*SW2) - (0.125D0*CA*CB*EL&
  &2*MW2*SB*B0(Mh02, MW2, MW2))/(Mh02*PI2*SA*SW2) - (0.015625D0*CB2*EL2*B0(Mh02, MZ2, MZ2))/(CW2*PI2*SW2) + (0.015625D0*CA*CB*EL2&
  &*SB*B0(Mh02, MZ2, MZ2))/(CW2*PI2*SA*SW2) + (0.03125D0*CA*CB*EL2*MA02*SB*C0(0.D0, 0.D0, Mh02, MA02, 0.D0, MZ2))/(CW2*PI2*SA*SW2&
  &) + (0.03125D0*EL2*MA02*SB2*C0(0.D0, 0.D0, Mh02, MA02, 0.D0, MZ2))/(CW2*PI2*SW2) + (0.0625D0*CA*CB*EL2*MHp2*SB*C0(0.D0, 0.D0, &
  &Mh02, MHp2, 0.D0, MW2))/(PI2*SA*SW2) + (0.0625D0*EL2*MHp2*SB2*C0(0.D0, 0.D0, Mh02, MHp2, 0.D0, MW2))/(PI2*SW2) + (0.0625D0*CB2&
  &*EL2*MW2*C0(0.D0, 0.D0, Mh02, MW2, 0.D0, MW2))/(PI2*SW2) - (0.0625D0*CA*CB*EL2*MW2*SB*C0(0.D0, 0.D0, Mh02, MW2, 0.D0, MW2))/(P&
  &I2*SA*SW2) + (0.03125D0*CB2*EL2*MZ2*C0(0.D0, 0.D0, Mh02, MZ2, 0.D0, MZ2))/(CW2*PI2*SW2) - (0.03125D0*CA*CB*EL2*MZ2*SB*C0(0.D0,&
  & 0.D0, Mh02, MZ2, 0.D0, MZ2))/(CW2*PI2*SA*SW2) - (0.0625D0*CB2*EL2*MW*MZ*B0(0.D0, 0.D0, MZ2)*DBLE(CW**INT(-3.D0)))/(Mh02*PI2*S&
  &W2) + (0.0625D0*CA*CB*EL2*MW*MZ*SB*B0(0.D0, 0.D0, MZ2)*DBLE(CW**INT(-3.D0)))/(Mh02*PI2*SA*SW2) + (0.0625D0*CB2*EL2*MW*MZ*B0(Mh&
  &02, MZ2, MZ2)*DBLE(CW**INT(-3.D0)))/(Mh02*PI2*SW2) - (0.0625D0*CA*CB*EL2*MW*MZ*SB*B0(Mh02, MZ2, MZ2)*DBLE(CW**INT(-3.D0)))/(Mh&
  &02*PI2*SA*SW2) - (0.125D0*CB2*EL2*C0(0.D0, 0.D0, Mh02, MW2, 0.D0, MW2)*DBLE(MW**INT(4.D0)))/(Mh02*PI2*SW2) + (0.125D0*CA*CB*EL&
  &2*SB*C0(0.D0, 0.D0, Mh02, MW2, 0.D0, MW2)*DBLE(MW**INT(4.D0)))/(Mh02*PI2*SA*SW2) - (0.0625D0*CB2*EL2*MW*C0(0.D0, 0.D0, Mh02, M&
  &Z2, 0.D0, MZ2)*DBLE(CW**INT(-3.D0))*DBLE(MZ**INT(3.D0)))/(Mh02*PI2*SW2) + (0.0625D0*CA*CB*EL2*MW*SB*C0(0.D0, 0.D0, Mh02, MZ2, &
  &0.D0, MZ2)*DBLE(CW**INT(-3.D0))*DBLE(MZ**INT(3.D0)))/(Mh02*PI2*SA*SW2)

h0toN1N1ProcDepRelVC = totalAmplitude
end function h0toN1N1ProcDepRelVC