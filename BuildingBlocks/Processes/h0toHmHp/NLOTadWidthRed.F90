double complex function h0toHmHpTad()
 use constants
 implicit none
#include "looptools.h"
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(40)

 amplitudes(1) = (-0.015625D0*EL2*ME2*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*EL2&
  &*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2 -&
  & 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk4*A0(&
  &ME2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(2) = (-0.015625D0*EL2*MM2*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*EL2&
  &*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2 -&
  & 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk4*A0(&
  &MM2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(3) = (-0.015625D0*EL2*ML2*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*EL2&
  &*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2 -&
  & 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk4*A0(&
  &ML2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(4) = (-0.046875D0*CA*EL2*MU2*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*&
  &EL2*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW&
  &2 - 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MU&
  &2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (Mh02*PI2*S2B2*SB)

 amplitudes(5) = (-0.046875D0*CA*EL2*MC2*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*&
  &EL2*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW&
  &2 - 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MC&
  &2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (Mh02*PI2*S2B2*SB)

 amplitudes(6) = (-0.046875D0*CA*EL2*MT2*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*&
  &EL2*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW&
  &2 - 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MT&
  &2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (Mh02*PI2*S2B2*SB)

 amplitudes(7) = (-0.046875D0*EL2*MD2*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*EL2&
  &*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2 -&
  & 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk1*A0(&
  &MD2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(8) = (-0.046875D0*EL2*MS2*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*EL2&
  &*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2 -&
  & 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk1*A0(&
  &MS2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(9) = (-0.046875D0*EL2*MB2*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*EL2&
  &*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2 -&
  & 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk1*A0(&
  &MB2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(10) = (-0.015625D0*EL2*ME2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.&
  &D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-1.&
  &D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk5*A0(ME2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT&
  &(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(11) = (-0.015625D0*EL2*MM2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.&
  &D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-1.&
  &D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk5*A0(MM2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT&
  &(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(12) = (-0.015625D0*EL2*ML2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.&
  &D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-1.&
  &D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk5*A0(ML2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT&
  &(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(13) = (-0.046875D0*EL2*MU2*SA*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA +&
  & 2.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (&
  &-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MU2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-&
  &4.D0)))/ (MHH2*PI2*S2B2*SB)

 amplitudes(14) = (-0.046875D0*EL2*MC2*SA*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA +&
  & 2.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (&
  &-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MC2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-&
  &4.D0)))/ (MHH2*PI2*S2B2*SB)

 amplitudes(15) = (-0.046875D0*EL2*MT2*SA*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA +&
  & 2.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (&
  &-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MT2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-&
  &4.D0)))/ (MHH2*PI2*S2B2*SB)

 amplitudes(16) = (-0.046875D0*EL2*MD2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.&
  &D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-1.&
  &D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk2*A0(MD2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT&
  &(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(17) = (-0.046875D0*EL2*MS2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.&
  &D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-1.&
  &D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk2*A0(MS2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT&
  &(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(18) = (-0.046875D0*EL2*MB2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.&
  &D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-1.&
  &D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk2*A0(MB2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT&
  &(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(19) = (0.005859375D0*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*EL2*Mh02&
  &*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2 - 4.D0&
  &*C2B2*CBA2*Lambda5*MW2*SW2)* (2.D0*CAB*EL2*Mh02 + EL2*Mh02*S2A*SBA - 4.D0*CAB*CBA2*Lambda5*MW2*SW2)*(-1.D0*(Mh02 - 2.D0*MHp2)*&
  &SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(Mh02)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))*DBLE(SW**INT(-4.&
  &D0)))/(Mh02*PI2)

 amplitudes(20) = (-0.001953125D0*SBA*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*EL2&
  &*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2 -&
  & 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (EL2*Mh02*S2A + 2.D0*EL2*MHH2*S2A - 6.D0*Lambda5*MW2*S2A*SW2 - 2.D0*Lambda5*MW2*S2B*SW2)* (-&
  &1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MHH2)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(&
  &-3.D0))* DBLE(SW**INT(-4.D0)))/(Mh02*PI2)

 amplitudes(21) = (0.001953125D0*(2.D0*CAB*EL2*Mh02 + 2.D0*EL2*MA02*S2B*SBA - 1.D0*EL2*Mh02*S2B*SBA - 4.D0*CAB*Lambda5*MW2*SW2)* &
  &(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*EL2*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S&
  &2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2 - 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (&
  &-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MA02)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT&
  &(-3.D0))* DBLE(SW**INT(-4.D0)))/(Mh02*PI2)

 amplitudes(22) = (0.001953125D0*EL2*SBA*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*&
  &EL2*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW&
  &2 - 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(Ga&
  &ugeXiZ*MZ2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (PI2*S2B2)

 amplitudes(23) = (0.00390625D0*(2.D0*CAB*EL2*Mh02 - 1.D0*EL2*Mh02*S2B*SBA + 2.D0*EL2*MHp2*S2B*SBA - 4.D0*CAB*Lambda5*MW2*SW2)* (&
  &4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*EL2*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2&
  &B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2 - 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-&
  &1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MHp2)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(&
  &-3.D0))* DBLE(SW**INT(-4.D0)))/(Mh02*PI2)

 amplitudes(24) = (0.00390625D0*EL2*SBA*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + 2.D0*CAB*E&
  &L2*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambda5*MW2*SW2&
  & - 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(Gau&
  &geXiW*MW2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (PI2*S2B2)

 amplitudes(25) = (0.001953125D0*CBA*(2.D0*EL2*Mh02*S2A + EL2*MHH2*S2A - 6.D0*Lambda5*MW2*S2A*SW2 + 2.D0*Lambda5*MW2*S2B*SW2)* (2&
  &.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MH&
  &H2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0&
  &*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(Mh02)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))* DBLE(SW**INT(-4.D0)))/(MHH2*PI2&
  &)

 amplitudes(26) = (-0.005859375D0*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D0*CB&
  &A*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CBA*EL2*&
  &MHH2*S2A - 2.D0*EL2*MHH2*SAB + 4.D0*Lambda5*MW2*SAB*SBA2*SW2)*(-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*&
  &MW2*SW2)/EL2))/S2B)*A0(MHH2)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))*DBLE(SW**INT(-4.D0)))/(MHH2*PI2)

 amplitudes(27) = (0.001953125D0*(2.D0*CBA*EL2*MA02*S2B - 1.D0*CBA*EL2*MHH2*S2B + 2.D0*EL2*MHH2*SAB - 4.D0*Lambda5*MW2*SAB*SW2)* &
  &(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*&
  &MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.&
  &D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MA02)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))* DBLE(SW**INT(-4.D0)))/(MHH2*P&
  &I2)

 amplitudes(28) = (0.001953125D0*CBA*EL2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + &
  &2.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-&
  &1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiZ*MZ2)*DBLE(MW**INT(-4.D0))*DBLE(S&
  &W**INT(-4.D0)))/ (PI2*S2B2)

 amplitudes(29) = (-0.00390625D0*(CBA*EL2*MHH2*S2B - 2.D0*CBA*EL2*MHp2*S2B - 2.D0*EL2*MHH2*SAB + 4.D0*Lambda5*MW2*SAB*SW2)* (2.D0&
  &*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*&
  &S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh&
  &02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MHp2)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))* DBLE(SW**INT(-4.D0)))/(MHH2*PI2)

 amplitudes(30) = (0.00390625D0*CBA*EL2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2&
  &.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (-1&
  &.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiW*MW2)*DBLE(MW**INT(-4.D0))*DBLE(SW&
  &**INT(-4.D0)))/ (PI2*S2B2)

 amplitudes(31) = (-0.00390625D0*EL2*GaugeXiZ*SBA*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + &
  &2.D0*CAB*EL2*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambd&
  &a5*MW2*SW2 - 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S&
  &2B)*A0(GaugeXiZ*MZ2)*DBLE(SW**INT(-4.D0)))/ (CW2*Mh02*MW2*PI2*S2B2)

 amplitudes(32) = (-0.00390625D0*EL2*GaugeXiW*SBA*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + &
  &2.D0*CAB*EL2*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambd&
  &a5*MW2*SW2 - 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S&
  &2B)*A0(GaugeXiW*MW2)*DBLE(SW**INT(-4.D0)))/(Mh02*MW2*PI2*S2B2)

 amplitudes(33) = (-0.00390625D0*EL2*GaugeXiW*SBA*(4.D0*CAB2*EL2*Mh02 - 1.D0*CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA*EL2*MHH2*S2A*SAB + &
  &2.D0*CAB*EL2*Mh02*S2A*SBA - 2.D0*CAB*EL2*Mh02*S2B*SBA - 1.D0*EL2*Mh02*S2A*S2B*SBA2 + 2.D0*EL2*MHp2*S2B2*SBA2 - 4.D0*CAB2*Lambd&
  &a5*MW2*SW2 - 4.D0*C2B2*CBA2*Lambda5*MW2*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S&
  &2B)*A0(GaugeXiW*MW2)*DBLE(SW**INT(-4.D0)))/(Mh02*MW2*PI2*S2B2)

 amplitudes(34) = (-0.00390625D0*CBA*EL2*GaugeXiZ*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S&
  &2B*SBA + 2.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA&
  &*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiZ*MZ2)*DBLE(SW**INT(-4.D0&
  &)))/ (CW2*MHH2*MW2*PI2*S2B2)

 amplitudes(35) = (-0.00390625D0*CBA*EL2*GaugeXiW*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S&
  &2B*SBA + 2.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA&
  &*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiW*MW2)*DBLE(SW**INT(-4.D0&
  &)))/(MHH2*MW2*PI2*S2B2)

 amplitudes(36) = (-0.00390625D0*CBA*EL2*GaugeXiW*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S&
  &2B*SBA + 2.D0*CBA*EL2*MHp2*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA&
  &*SW2)* (-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiW*MW2)*DBLE(SW**INT(-4.D0&
  &)))/(MHH2*MW2*PI2*S2B2)

 amplitudes(37) = ((0.D0 - 0.5D0*I)*EL*PI2*(-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)* (&
  &((0.D0 + 0.0625D0*I)*CAB2*EL*Lambda5*MW*MZ2*SBA*DBLE(PI**INT(-4.D0)))/(CW2*Mh02*S2B2*SW) + ((0.D0 + 0.0625D0*I)*C2B2*CBA2*EL*L&
  &ambda5*MW*MZ2*SBA*DBLE(PI**INT(-4.D0)))/(CW2*Mh02*S2B2*SW) - ((0.D0 + 0.09375D0*I)*CAB2*EL*Lambda5*MW*SBA*A0(MZ2)*DBLE(PI**INT&
  &(-4.D0)))/(CW2*Mh02*S2B2*SW) - ((0.D0 + 0.09375D0*I)*C2B2*CBA2*EL*Lambda5*MW*SBA*A0(MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*Mh02*S2B2*&
  &SW) - ((0.D0 + 0.03125D0*I)*CAB2*EL*GaugeXiZ*Lambda5*MW*SBA*A0(GaugeXiZ*MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*Mh02*S2B2*SW) - ((0.D0&
  & + 0.03125D0*I)*C2B2*CBA2*EL*GaugeXiZ*Lambda5*MW*SBA*A0(GaugeXiZ*MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*Mh02*S2B2*SW) + ((0.D0 + 0.01&
  &5625D0*I)*CBA2*MHH2*MZ2*S2A*SBA*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW*S2B) - ((0.D0 + 0.&
  &0625D0*I)*CAB2*MZ2*SBA*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) - ((0.D0 + 0.03125D0*I)*CB&
  &A*MHH2*MZ2*S2A*SAB*SBA*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW*S2B2) + ((0.D0 + 0.03125D0*&
  &I)*CAB*MZ2*SBA2*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) - ((0.D0 + 0.03125D0*I)*CAB*MZ2*S2&
  &A*SBA2*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) - ((0.D0 + 0.0234375D0*I)*CBA2*MHH2*S2A*SB&
  &A*A0(MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW*S2B) + ((0.D0 + 0.09375D0*I)*CAB2*SBA*A0&
  &(MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) + ((0.D0 + 0.046875D0*I)*CBA*MHH2*S2A*SAB*S&
  &BA*A0(MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW*S2B2) - ((0.D0 + 0.046875D0*I)*CAB*SBA2&
  &*A0(MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) + ((0.D0 + 0.046875D0*I)*CAB*S2A*SBA2*A0(&
  &MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) - ((0.D0 + 0.0078125D0*I)*CBA2*GaugeXiZ*MHH2&
  &*S2A*SBA*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/ (CW2*Mh02*MW*S2B) + ((0.D0 + 0.03125&
  &D0*I)*CAB2*GaugeXiZ*SBA*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/ (CW2*MW*S2B2) + ((0.D&
  &0 + 0.015625D0*I)*CBA*GaugeXiZ*MHH2*S2A*SAB*SBA*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)&
  &))/(CW2*Mh02*MW*S2B2) - ((0.D0 + 0.015625D0*I)*CAB*GaugeXiZ*SBA2*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))* DB&
  &LE(SW**INT(-3.D0)))/(CW2*MW*S2B) + ((0.D0 + 0.015625D0*I)*CAB*GaugeXiZ*S2A*SBA2*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**&
  &INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) - ((0.D0 + 0.03125D0*I)*MHp2*MZ2*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBL&
  &E(SBA**INT(3.D0))* DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW) + ((0.D0 + 0.015625D0*I)*MZ2*S2A*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0&
  &))*DBLE(SBA**INT(3.D0))* DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) + ((0.D0 + 0.046875D0*I)*MHp2*A0(MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI*&
  &*INT(-4.D0))*DBLE(SBA**INT(3.D0))* DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW) - ((0.D0 + 0.0234375D0*I)*S2A*A0(MZ2)*DBLE(EL**INT(3.D0&
  &))*DBLE(PI**INT(-4.D0))*DBLE(SBA**INT(3.D0))* DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) + ((0.D0 + 0.015625D0*I)*GaugeXiZ*MHp2*A0(Gau&
  &geXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SBA**INT(3.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW) - ((0.D0 + 0.007&
  &8125D0*I)*GaugeXiZ*S2A*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))* DBLE(PI**INT(-4.D0))*DBLE(SBA**INT(3.D0))*DBLE(SW**INT(-3.D0)))/(&
  &CW2*MW*S2B)))/(MW*SW)

 amplitudes(38) = ((0.D0 - 0.5D0*I)*EL*PI2*(-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)* (&
  &((0.D0 - 0.1875D0*I)*CAB2*EL*Lambda5*MW*SBA*A0(MW2)*DBLE(PI**INT(-4.D0)))/(Mh02*S2B2*SW) - ((0.D0 + 0.1875D0*I)*C2B2*CBA2*EL*L&
  &ambda5*MW*SBA*A0(MW2)*DBLE(PI**INT(-4.D0)))/(Mh02*S2B2*SW) - ((0.D0 + 0.0625D0*I)*CAB2*EL*GaugeXiW*Lambda5*MW*SBA*A0(GaugeXiW*&
  &MW2)*DBLE(PI**INT(-4.D0)))/(Mh02*S2B2*SW) - ((0.D0 + 0.0625D0*I)*C2B2*CBA2*EL*GaugeXiW*Lambda5*MW*SBA*A0(GaugeXiW*MW2)*DBLE(PI&
  &**INT(-4.D0)))/(Mh02*S2B2*SW) + ((0.D0 + 0.125D0*I)*CAB2*EL*Lambda5*SBA*DBLE(MW**INT(3.D0))*DBLE(PI**INT(-4.D0)))/(Mh02*S2B2*S&
  &W) + ((0.D0 + 0.125D0*I)*C2B2*CBA2*EL*Lambda5*SBA*DBLE(MW**INT(3.D0))*DBLE(PI**INT(-4.D0)))/(Mh02*S2B2*SW) + ((0.D0 + 0.03125D&
  &0*I)*CBA2*MHH2*MW*S2A*SBA*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(Mh02*S2B) - ((0.D0 + 0.125D0*I)*CAB2&
  &*MW*SBA*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/S2B2 - ((0.D0 + 0.0625D0*I)*CBA*MHH2*MW*S2A*SAB*SBA*DBL&
  &E(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(Mh02*S2B2) + ((0.D0 + 0.0625D0*I)*CAB*MW*SBA2*DBLE(EL**INT(3.D0))&
  &*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/S2B - ((0.D0 + 0.0625D0*I)*CAB*MW*S2A*SBA2*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0)&
  &)*DBLE(SW**INT(-3.D0)))/S2B2 - ((0.D0 + 0.046875D0*I)*CBA2*MHH2*S2A*SBA*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(&
  &SW**INT(-3.D0)))/(Mh02*MW*S2B) + ((0.D0 + 0.1875D0*I)*CAB2*SBA*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-&
  &3.D0)))/(MW*S2B2) + ((0.D0 + 0.09375D0*I)*CBA*MHH2*S2A*SAB*SBA*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-&
  &3.D0)))/(Mh02*MW*S2B2) - ((0.D0 + 0.09375D0*I)*CAB*SBA2*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))&
  &/(MW*S2B) + ((0.D0 + 0.09375D0*I)*CAB*S2A*SBA2*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MW*S2B2&
  &) - ((0.D0 + 0.015625D0*I)*CBA2*GaugeXiW*MHH2*S2A*SBA*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-&
  &3.D0)))/ (Mh02*MW*S2B) + ((0.D0 + 0.0625D0*I)*CAB2*GaugeXiW*SBA*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE&
  &(SW**INT(-3.D0)))/ (MW*S2B2) + ((0.D0 + 0.03125D0*I)*CBA*GaugeXiW*MHH2*S2A*SAB*SBA*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(P&
  &I**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(Mh02*MW*S2B2) - ((0.D0 + 0.03125D0*I)*CAB*GaugeXiW*SBA2*A0(GaugeXiW*MW2)*DBLE(EL**INT(3&
  &.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(MW*S2B) + ((0.D0 + 0.03125D0*I)*CAB*GaugeXiW*S2A*SBA2*A0(GaugeXiW*MW2)*DBLE&
  &(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(MW*S2B2) - ((0.D0 + 0.0625D0*I)*MHp2*MW*DBLE(EL**INT(3.D0))*DBLE(&
  &PI**INT(-4.D0))*DBLE(SBA**INT(3.D0))* DBLE(SW**INT(-3.D0)))/Mh02 + ((0.D0 + 0.03125D0*I)*MW*S2A*DBLE(EL**INT(3.D0))*DBLE(PI**I&
  &NT(-4.D0))*DBLE(SBA**INT(3.D0))*DBLE(SW**INT(-3.D0)))/ S2B + ((0.D0 + 0.09375D0*I)*MHp2*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**I&
  &NT(-4.D0))*DBLE(SBA**INT(3.D0))*DBLE(SW**INT(-3.D0)))/(Mh02*MW) - ((0.D0 + 0.046875D0*I)*S2A*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(&
  &PI**INT(-4.D0))*DBLE(SBA**INT(3.D0))*DBLE(SW**INT(-3.D0)))/(MW*S2B) + ((0.D0 + 0.03125D0*I)*GaugeXiW*MHp2*A0(GaugeXiW*MW2)*DBL&
  &E(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SBA**INT(3.D0))*DBLE(SW**INT(-3.D0)))/ (Mh02*MW) - ((0.D0 + 0.015625D0*I)*GaugeXiW*&
  &S2A*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SBA**INT(3.D0))* DBLE(SW**INT(-3.D0)))/(MW*S2B)))/(MW*SW)

 amplitudes(39) = ((0.D0 - 0.5D0*I)*EL*PI2*(-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)* (&
  &((0.D0 + 0.0625D0*I)*C2B*CBA*EL*Lambda5*MW*MZ2*S2A*DBLE(PI**INT(-4.D0)))/(CW2*MHH2*S2B2*SW) + ((0.D0 + 0.0625D0*I)*CBA2*EL*Lam&
  &bda5*MW*MZ2*SBA*DBLE(PI**INT(-4.D0)))/(CW2*MHH2*SW) - ((0.D0 + 0.09375D0*I)*C2B*CBA*EL*Lambda5*MW*S2A*A0(MZ2)*DBLE(PI**INT(-4.&
  &D0)))/(CW2*MHH2*S2B2*SW) - ((0.D0 + 0.09375D0*I)*CBA2*EL*Lambda5*MW*SBA*A0(MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*MHH2*SW) - ((0.D0 +&
  & 0.03125D0*I)*C2B*CBA*EL*GaugeXiZ*Lambda5*MW*S2A*A0(GaugeXiZ*MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*MHH2*S2B2*SW) - ((0.D0 + 0.03125D&
  &0*I)*CBA2*EL*GaugeXiZ*Lambda5*MW*SBA*A0(GaugeXiZ*MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*MHH2*SW) - ((0.D0 + 0.03125D0*I)*CAB*CBA2*Mh0&
  &2*MZ2*S2A*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW*S2B2) - ((0.D0 + 0.03125D0*I)*CBA2*MHp2*&
  &MZ2*SBA*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW) - ((0.D0 + 0.015625D0*I)*CBA2*MZ2*S2A*SBA&
  &*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) + ((0.D0 + 0.015625D0*I)*CBA2*Mh02*MZ2*S2A*SBA*DB&
  &LE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW*S2B) + ((0.D0 + 0.03125D0*I)*CBA*MZ2*S2A*SAB*SBA*DBL&
  &E(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) + ((0.D0 + 0.046875D0*I)*CAB*CBA2*Mh02*S2A*A0(MZ2)*D&
  &BLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW*S2B2) + ((0.D0 + 0.046875D0*I)*CBA2*MHp2*SBA*A0(MZ2&
  &)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW) + ((0.D0 + 0.0234375D0*I)*CBA2*S2A*SBA*A0(MZ2)*&
  &DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) - ((0.D0 + 0.0234375D0*I)*CBA2*Mh02*S2A*SBA*A0(MZ2&
  &)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW*S2B) - ((0.D0 + 0.046875D0*I)*CBA*S2A*SAB*SBA*A0&
  &(MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) + ((0.D0 + 0.015625D0*I)*CAB*CBA2*GaugeXiZ*&
  &Mh02*S2A*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/ (CW2*MHH2*MW*S2B2) + ((0.D0 + 0.0156&
  &25D0*I)*CBA2*GaugeXiZ*MHp2*SBA*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW) &
  &+ ((0.D0 + 0.0078125D0*I)*CBA2*GaugeXiZ*S2A*SBA*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)&
  &))/(CW2*MW*S2B) - ((0.D0 + 0.0078125D0*I)*CBA2*GaugeXiZ*Mh02*S2A*SBA*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))* DBLE(PI**INT(-4.D0)&
  &)*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW*S2B) - ((0.D0 + 0.015625D0*I)*CBA*GaugeXiZ*S2A*SAB*SBA*A0(GaugeXiZ*MZ2)* DBLE(EL**INT(3.D&
  &0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2)))/(MW*SW)

 amplitudes(40) = ((0.D0 - 0.5D0*I)*EL*PI2*(-1.D0*(Mh02 - 2.D0*MHp2)*SBA + (CAB*(2.D0*Mh02 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)* (&
  &((0.D0 - 0.1875D0*I)*C2B*CBA*EL*Lambda5*MW*S2A*A0(MW2)*DBLE(PI**INT(-4.D0)))/(MHH2*S2B2*SW) - ((0.D0 + 0.1875D0*I)*CBA2*EL*Lam&
  &bda5*MW*SBA*A0(MW2)*DBLE(PI**INT(-4.D0)))/(MHH2*SW) - ((0.D0 + 0.0625D0*I)*C2B*CBA*EL*GaugeXiW*Lambda5*MW*S2A*A0(GaugeXiW*MW2)&
  &*DBLE(PI**INT(-4.D0)))/(MHH2*S2B2*SW) - ((0.D0 + 0.0625D0*I)*CBA2*EL*GaugeXiW*Lambda5*MW*SBA*A0(GaugeXiW*MW2)*DBLE(PI**INT(-4.&
  &D0)))/(MHH2*SW) + ((0.D0 + 0.125D0*I)*C2B*CBA*EL*Lambda5*S2A*DBLE(MW**INT(3.D0))*DBLE(PI**INT(-4.D0)))/(MHH2*S2B2*SW) + ((0.D0&
  & + 0.125D0*I)*CBA2*EL*Lambda5*SBA*DBLE(MW**INT(3.D0))*DBLE(PI**INT(-4.D0)))/(MHH2*SW) - ((0.D0 + 0.0625D0*I)*CAB*CBA2*Mh02*MW*&
  &S2A*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MHH2*S2B2) - ((0.D0 + 0.0625D0*I)*CBA2*MHp2*MW*SBA*DBLE(EL&
  &**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/MHH2 - ((0.D0 + 0.03125D0*I)*CBA2*MW*S2A*SBA*DBLE(EL**INT(3.D0))*DBLE(&
  &PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/S2B + ((0.D0 + 0.03125D0*I)*CBA2*Mh02*MW*S2A*SBA*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0)&
  &)*DBLE(SW**INT(-3.D0)))/(MHH2*S2B) + ((0.D0 + 0.0625D0*I)*CBA*MW*S2A*SAB*SBA*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW*&
  &*INT(-3.D0)))/S2B2 + ((0.D0 + 0.09375D0*I)*CAB*CBA2*Mh02*S2A*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.&
  &D0)))/(MHH2*MW*S2B2) + ((0.D0 + 0.09375D0*I)*CBA2*MHp2*SBA*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0&
  &)))/(MHH2*MW) + ((0.D0 + 0.046875D0*I)*CBA2*S2A*SBA*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MW&
  &*S2B) - ((0.D0 + 0.046875D0*I)*CBA2*Mh02*S2A*SBA*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MHH2*&
  &MW*S2B) - ((0.D0 + 0.09375D0*I)*CBA*S2A*SAB*SBA*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MW*S2B&
  &2) + ((0.D0 + 0.03125D0*I)*CAB*CBA2*GaugeXiW*Mh02*S2A*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-&
  &3.D0)))/ (MHH2*MW*S2B2) + ((0.D0 + 0.03125D0*I)*CBA2*GaugeXiW*MHp2*SBA*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0&
  &))*DBLE(SW**INT(-3.D0)))/ (MHH2*MW) + ((0.D0 + 0.015625D0*I)*CBA2*GaugeXiW*S2A*SBA*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(P&
  &I**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/ (MW*S2B) - ((0.D0 + 0.015625D0*I)*CBA2*GaugeXiW*Mh02*S2A*SBA*A0(GaugeXiW*MW2)*DBLE(EL**I&
  &NT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/ (MHH2*MW*S2B) - ((0.D0 + 0.03125D0*I)*CBA*GaugeXiW*S2A*SAB*SBA*A0(GaugeX&
  &iW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/ (MW*S2B2)))/(MW*SW)

  totalAmplitude = (0D0,0D0)
 do j=1,40
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do

 h0toHmHpTad = totalAmplitude
end function h0toHmHpTad