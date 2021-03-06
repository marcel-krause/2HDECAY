double complex function HHtoA0A0Tad()
 use constants
 implicit none
#include "looptools.h"
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(40)

 amplitudes(1) = (-0.015625D0*EL2*ME2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D&
  &0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CBA*&
  &(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk4*A0(ME2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-&
  &4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(2) = (-0.015625D0*EL2*MM2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D&
  &0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CBA*&
  &(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk4*A0(MM2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-&
  &4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(3) = (-0.015625D0*EL2*ML2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D&
  &0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CBA*&
  &(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk4*A0(ML2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-&
  &4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(4) = (-0.046875D0*CA*EL2*MU2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + &
  &2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (C&
  &BA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MU2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.&
  &D0)))/ (Mh02*PI2*S2B2*SB)

 amplitudes(5) = (-0.046875D0*CA*EL2*MC2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + &
  &2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (C&
  &BA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MC2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.&
  &D0)))/ (Mh02*PI2*S2B2*SB)

 amplitudes(6) = (-0.046875D0*CA*EL2*MT2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + &
  &2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (C&
  &BA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MT2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.&
  &D0)))/ (Mh02*PI2*S2B2*SB)

 amplitudes(7) = (-0.046875D0*EL2*MD2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D&
  &0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CBA*&
  &(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk1*A0(MD2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-&
  &4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(8) = (-0.046875D0*EL2*MS2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D&
  &0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CBA*&
  &(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk1*A0(MS2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-&
  &4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(9) = (-0.046875D0*EL2*MB2*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D&
  &0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CBA*&
  &(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk1*A0(MB2)*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-&
  &4.D0)))/ (Mh02*PI2*S2B2)

 amplitudes(10) = (-0.015625D0*EL2*ME2*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*EL&
  &2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2B&
  &2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk5*A0(ME2)*DBLE(&
  &MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(11) = (-0.015625D0*EL2*MM2*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*EL&
  &2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2B&
  &2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk5*A0(MM2)*DBLE(&
  &MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(12) = (-0.015625D0*EL2*ML2*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*EL&
  &2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2B&
  &2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk5*A0(ML2)*DBLE(&
  &MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(13) = (-0.046875D0*EL2*MU2*SA*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA&
  &*EL2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*&
  &C2B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MU2)*DBLE(MW&
  &**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (MHH2*PI2*S2B2*SB)

 amplitudes(14) = (-0.046875D0*EL2*MC2*SA*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA&
  &*EL2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*&
  &C2B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MC2)*DBLE(MW&
  &**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (MHH2*PI2*S2B2*SB)

 amplitudes(15) = (-0.046875D0*EL2*MT2*SA*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA&
  &*EL2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*&
  &C2B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MT2)*DBLE(MW&
  &**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (MHH2*PI2*S2B2*SB)

 amplitudes(16) = (-0.046875D0*EL2*MD2*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*EL&
  &2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2B&
  &2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk2*A0(MD2)*DBLE(&
  &MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(17) = (-0.046875D0*EL2*MS2*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*EL&
  &2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2B&
  &2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk2*A0(MS2)*DBLE(&
  &MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(18) = (-0.046875D0*EL2*MB2*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*EL&
  &2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2B&
  &2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*Yuk2*A0(MB2)*DBLE(&
  &MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (MHH2*PI2*S2B2)

 amplitudes(19) = (0.005859375D0*(2.D0*CAB*EL2*Mh02 + EL2*Mh02*S2A*SBA - 4.D0*CAB*CBA2*Lambda5*MW2*SW2)*(2.D0*CAB*CBA*EL2*Mh02*S2&
  &A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C&
  &2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)*(CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2&
  &*SW2)/EL2))/S2B)*A0(Mh02)* DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))*DBLE(SW**INT(-4.D0)))/(Mh02*PI2)

 amplitudes(20) = (-0.001953125D0*SBA*(EL2*Mh02*S2A + 2.D0*EL2*MHH2*S2A - 6.D0*Lambda5*MW2*S2A*SW2 - 2.D0*Lambda5*MW2*S2B*SW2)* (&
  &2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*M&
  &HH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0&
  &*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MHH2)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))* DBLE(SW**INT(-4.D0)))/(Mh02*PI2&
  &)

 amplitudes(21) = (0.001953125D0*(2.D0*CAB*EL2*Mh02 + 2.D0*EL2*MA02*S2B*SBA - 1.D0*EL2*Mh02*S2B*SBA - 4.D0*CAB*Lambda5*MW2*SW2)* &
  &(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*&
  &MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D&
  &0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MA02)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))* DBLE(SW**INT(-4.D0)))/(Mh02*PI&
  &2)

 amplitudes(22) = (0.001953125D0*EL2*SBA*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + &
  &2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (C&
  &BA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiZ*MZ2)*DBLE(MW**INT(-4.D0))*DBLE(SW&
  &**INT(-4.D0)))/ (PI2*S2B2)

 amplitudes(23) = (0.00390625D0*(2.D0*CAB*EL2*Mh02 - 1.D0*EL2*Mh02*S2B*SBA + 2.D0*EL2*MHp2*S2B*SBA - 4.D0*CAB*Lambda5*MW2*SW2)* (&
  &2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*M&
  &HH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0&
  &*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MHp2)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))* DBLE(SW**INT(-4.D0)))/(Mh02*PI2&
  &)

 amplitudes(24) = (0.00390625D0*EL2*SBA*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S2B*SBA + 2&
  &.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA*SW2)* (CB&
  &A*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiW*MW2)*DBLE(MW**INT(-4.D0))*DBLE(SW*&
  &*INT(-4.D0)))/ (PI2*S2B2)

 amplitudes(25) = (0.001953125D0*CBA*(2.D0*EL2*Mh02*S2A + EL2*MHH2*S2A - 6.D0*Lambda5*MW2*S2A*SW2 + 2.D0*Lambda5*MW2*S2B*SW2)* (C&
  &BA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*EL2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - &
  &2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA&
  &02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(Mh02)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))* DBL&
  &E(SW**INT(-4.D0)))/(MHH2*PI2)

 amplitudes(26) = (-0.005859375D0*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*EL2*MHH&
  &2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2B2*Lam&
  &bda5*MW2*SBA2*SW2)* (CBA*EL2*MHH2*S2A - 2.D0*EL2*MHH2*SAB + 4.D0*Lambda5*MW2*SAB*SBA2*SW2)*(CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB&
  &*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MHH2)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))*DBLE(SW**INT(-4.D0)))/(MHH&
  &2*PI2)

 amplitudes(27) = (0.001953125D0*(2.D0*CBA*EL2*MA02*S2B - 1.D0*CBA*EL2*MHH2*S2B + 2.D0*EL2*MHH2*SAB - 4.D0*Lambda5*MW2*SAB*SW2)* &
  &(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*EL2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 &
  &- 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*&
  &MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MA02)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))* D&
  &BLE(SW**INT(-4.D0)))/(MHH2*PI2)

 amplitudes(28) = (0.001953125D0*CBA*EL2*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*&
  &EL2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C&
  &2B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiZ*MZ2)&
  &*DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (PI2*S2B2)

 amplitudes(29) = (-0.00390625D0*(CBA*EL2*MHH2*S2B - 2.D0*CBA*EL2*MHp2*S2B - 2.D0*EL2*MHH2*SAB + 4.D0*Lambda5*MW2*SAB*SW2)* (CBA2&
  &*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*EL2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D&
  &0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 &
  &- 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(MHp2)*DBLE(MW**INT(-4.D0))*DBLE(S2B**INT(-3.D0))* DBLE(S&
  &W**INT(-4.D0)))/(MHH2*PI2)

 amplitudes(30) = (0.00390625D0*CBA*EL2*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - 2.D0*CBA*E&
  &L2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2 - 4.D0*C2&
  &B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiW*MW2)*&
  &DBLE(MW**INT(-4.D0))*DBLE(SW**INT(-4.D0)))/ (PI2*S2B2)

 amplitudes(31) = (-0.00390625D0*EL2*GaugeXiZ*SBA*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S&
  &2B*SBA + 2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA&
  &*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiZ*MZ2)*DBLE(SW**INT(-4.D0)&
  &))/(CW2*Mh02*MW2*PI2*S2B2)

 amplitudes(32) = (-0.00390625D0*EL2*GaugeXiW*SBA*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S&
  &2B*SBA + 2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA&
  &*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiW*MW2)*DBLE(SW**INT(-4.D0)&
  &))/(Mh02*MW2*PI2*S2B2)

 amplitudes(33) = (-0.00390625D0*EL2*GaugeXiW*SBA*(2.D0*CAB*CBA*EL2*Mh02*S2A - 1.D0*CBA*EL2*Mh02*S2A*S2B*SBA + CBA*EL2*MHH2*S2A*S&
  &2B*SBA + 2.D0*CBA*EL2*MA02*S2B2*SBA - 2.D0*EL2*MHH2*S2A*SAB*SBA - 4.D0*C2B*Lambda5*MW2*S2A*SW2 - 4.D0*CBA*Lambda5*MW2*S2B2*SBA&
  &*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(GaugeXiW*MW2)*DBLE(SW**INT(-4.D0)&
  &))/(Mh02*MW2*PI2*S2B2)

 amplitudes(34) = (-0.00390625D0*CBA*EL2*GaugeXiZ*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - &
  &2.D0*CBA*EL2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2&
  & - 4.D0*C2B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(Gaug&
  &eXiZ*MZ2)*DBLE(SW**INT(-4.D0)))/(CW2*MHH2*MW2*PI2*S2B2)

 amplitudes(35) = (-0.00390625D0*CBA*EL2*GaugeXiW*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - &
  &2.D0*CBA*EL2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2&
  & - 4.D0*C2B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(Gaug&
  &eXiW*MW2)*DBLE(SW**INT(-4.D0)))/(MHH2*MW2*PI2*S2B2)

 amplitudes(36) = (-0.00390625D0*CBA*EL2*GaugeXiW*(CBA2*EL2*MHH2*S2A*S2B + 2.D0*CBA2*EL2*MA02*S2B2 - 2.D0*CBA*EL2*MHH2*S2A*SAB - &
  &2.D0*CBA*EL2*MHH2*S2B*SAB + 4.D0*EL2*MHH2*SAB2 - 2.D0*CAB*EL2*Mh02*S2A*SBA + EL2*Mh02*S2A*S2B*SBA2 - 4.D0*Lambda5*MW2*SAB2*SW2&
  & - 4.D0*C2B2*Lambda5*MW2*SBA2*SW2)* (CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)*A0(Gaug&
  &eXiW*MW2)*DBLE(SW**INT(-4.D0)))/(MHH2*MW2*PI2*S2B2)

 amplitudes(37) = ((0.D0 - 0.5D0*I)*EL*PI2*(CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)* ((&
  &(0.D0 + 0.0625D0*I)*C2B*EL*Lambda5*MW*MZ2*S2A*SBA*DBLE(PI**INT(-4.D0)))/(CW2*Mh02*S2B2*SW) + ((0.D0 + 0.0625D0*I)*CBA*EL*Lambd&
  &a5*MW*MZ2*SBA2*DBLE(PI**INT(-4.D0)))/(CW2*Mh02*SW) - ((0.D0 + 0.09375D0*I)*C2B*EL*Lambda5*MW*S2A*SBA*A0(MZ2)*DBLE(PI**INT(-4.D&
  &0)))/(CW2*Mh02*S2B2*SW) - ((0.D0 + 0.09375D0*I)*CBA*EL*Lambda5*MW*SBA2*A0(MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*Mh02*SW) - ((0.D0 + &
  &0.03125D0*I)*C2B*EL*GaugeXiZ*Lambda5*MW*S2A*SBA*A0(GaugeXiZ*MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*Mh02*S2B2*SW) - ((0.D0 + 0.03125D0&
  &*I)*CBA*EL*GaugeXiZ*Lambda5*MW*SBA2*A0(GaugeXiZ*MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*Mh02*SW) - ((0.D0 + 0.03125D0*I)*CAB*CBA*MZ2*S&
  &2A*SBA*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) - ((0.D0 + 0.03125D0*I)*CBA*MA02*MZ2*SBA2*&
  &DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW) + ((0.D0 + 0.015625D0*I)*CBA*MZ2*S2A*SBA2*DBLE(EL&
  &**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) - ((0.D0 + 0.015625D0*I)*CBA*MHH2*MZ2*S2A*SBA2*DBLE(EL**I&
  &NT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW*S2B) + ((0.D0 + 0.03125D0*I)*MHH2*MZ2*S2A*SAB*SBA2*DBLE(EL**&
  &INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW*S2B2) + ((0.D0 + 0.046875D0*I)*CAB*CBA*S2A*SBA*A0(MZ2)*DBLE&
  &(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) + ((0.D0 + 0.046875D0*I)*CBA*MA02*SBA2*A0(MZ2)*DBLE(E&
  &L**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW) - ((0.D0 + 0.0234375D0*I)*CBA*S2A*SBA2*A0(MZ2)*DBLE(EL*&
  &*INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) + ((0.D0 + 0.0234375D0*I)*CBA*MHH2*S2A*SBA2*A0(MZ2)*DBLE(E&
  &L**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW*S2B) - ((0.D0 + 0.046875D0*I)*MHH2*S2A*SAB*SBA2*A0(MZ2)*&
  &DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW*S2B2) + ((0.D0 + 0.015625D0*I)*CAB*CBA*GaugeXiZ*S2&
  &A*SBA*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) + ((0.D0 + 0.015625D0*I)*C&
  &BA*GaugeXiZ*MA02*SBA2*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW) - ((0.D0 +&
  & 0.0078125D0*I)*CBA*GaugeXiZ*S2A*SBA2*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*&
  &S2B) + ((0.D0 + 0.0078125D0*I)*CBA*GaugeXiZ*MHH2*S2A*SBA2*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**I&
  &NT(-3.D0)))/ (CW2*Mh02*MW*S2B) - ((0.D0 + 0.015625D0*I)*GaugeXiZ*MHH2*S2A*SAB*SBA2*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(P&
  &I**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(CW2*Mh02*MW*S2B2)))/(MW*SW)

 amplitudes(38) = ((0.D0 - 0.5D0*I)*EL*PI2*(CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)* ((&
  &(0.D0 - 0.1875D0*I)*C2B*EL*Lambda5*MW*S2A*SBA*A0(MW2)*DBLE(PI**INT(-4.D0)))/(Mh02*S2B2*SW) - ((0.D0 + 0.1875D0*I)*CBA*EL*Lambd&
  &a5*MW*SBA2*A0(MW2)*DBLE(PI**INT(-4.D0)))/(Mh02*SW) - ((0.D0 + 0.0625D0*I)*C2B*EL*GaugeXiW*Lambda5*MW*S2A*SBA*A0(GaugeXiW*MW2)*&
  &DBLE(PI**INT(-4.D0)))/(Mh02*S2B2*SW) - ((0.D0 + 0.0625D0*I)*CBA*EL*GaugeXiW*Lambda5*MW*SBA2*A0(GaugeXiW*MW2)*DBLE(PI**INT(-4.D&
  &0)))/(Mh02*SW) + ((0.D0 + 0.125D0*I)*C2B*EL*Lambda5*S2A*SBA*DBLE(MW**INT(3.D0))*DBLE(PI**INT(-4.D0)))/(Mh02*S2B2*SW) + ((0.D0 &
  &+ 0.125D0*I)*CBA*EL*Lambda5*SBA2*DBLE(MW**INT(3.D0))*DBLE(PI**INT(-4.D0)))/(Mh02*SW) - ((0.D0 + 0.0625D0*I)*CAB*CBA*MW*S2A*SBA&
  &*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/S2B2 - ((0.D0 + 0.0625D0*I)*CBA*MA02*MW*SBA2*DBLE(EL**INT(3.D0&
  &))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/Mh02 + ((0.D0 + 0.03125D0*I)*CBA*MW*S2A*SBA2*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4&
  &.D0))*DBLE(SW**INT(-3.D0)))/S2B - ((0.D0 + 0.03125D0*I)*CBA*MHH2*MW*S2A*SBA2*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW*&
  &*INT(-3.D0)))/(Mh02*S2B) + ((0.D0 + 0.0625D0*I)*MHH2*MW*S2A*SAB*SBA2*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.&
  &D0)))/(Mh02*S2B2) + ((0.D0 + 0.09375D0*I)*CAB*CBA*S2A*SBA*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)&
  &))/(MW*S2B2) + ((0.D0 + 0.09375D0*I)*CBA*MA02*SBA2*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(Mh0&
  &2*MW) - ((0.D0 + 0.046875D0*I)*CBA*S2A*SBA2*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MW*S2B) + &
  &((0.D0 + 0.046875D0*I)*CBA*MHH2*S2A*SBA2*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(Mh02*MW*S2B) &
  &- ((0.D0 + 0.09375D0*I)*MHH2*S2A*SAB*SBA2*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(Mh02*MW*S2B2&
  &) + ((0.D0 + 0.03125D0*I)*CAB*CBA*GaugeXiW*S2A*SBA*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D&
  &0)))/(MW*S2B2) + ((0.D0 + 0.03125D0*I)*CBA*GaugeXiW*MA02*SBA2*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(S&
  &W**INT(-3.D0)))/(Mh02*MW) - ((0.D0 + 0.015625D0*I)*CBA*GaugeXiW*S2A*SBA2*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.&
  &D0))*DBLE(SW**INT(-3.D0)))/(MW*S2B) + ((0.D0 + 0.015625D0*I)*CBA*GaugeXiW*MHH2*S2A*SBA2*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*D&
  &BLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/ (Mh02*MW*S2B) - ((0.D0 + 0.03125D0*I)*GaugeXiW*MHH2*S2A*SAB*SBA2*A0(GaugeXiW*MW2)*D&
  &BLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(Mh02*MW*S2B2)))/(MW*SW)

 amplitudes(39) = ((0.D0 - 0.5D0*I)*EL*PI2*(CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)* ((&
  &(0.D0 + 0.0625D0*I)*CBA*EL*Lambda5*MW*MZ2*SAB2*DBLE(PI**INT(-4.D0)))/(CW2*MHH2*S2B2*SW) + ((0.D0 + 0.0625D0*I)*C2B2*CBA*EL*Lam&
  &bda5*MW*MZ2*SBA2*DBLE(PI**INT(-4.D0)))/(CW2*MHH2*S2B2*SW) - ((0.D0 + 0.09375D0*I)*CBA*EL*Lambda5*MW*SAB2*A0(MZ2)*DBLE(PI**INT(&
  &-4.D0)))/(CW2*MHH2*S2B2*SW) - ((0.D0 + 0.09375D0*I)*C2B2*CBA*EL*Lambda5*MW*SBA2*A0(MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*MHH2*S2B2*S&
  &W) - ((0.D0 + 0.03125D0*I)*CBA*EL*GaugeXiZ*Lambda5*MW*SAB2*A0(GaugeXiZ*MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*MHH2*S2B2*SW) - ((0.D0 &
  &+ 0.03125D0*I)*C2B2*CBA*EL*GaugeXiZ*Lambda5*MW*SBA2*A0(GaugeXiZ*MZ2)*DBLE(PI**INT(-4.D0)))/(CW2*MHH2*S2B2*SW) + ((0.D0 + 0.031&
  &25D0*I)*CBA2*MZ2*SAB*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) + ((0.D0 + 0.03125D0*I)*CBA2*&
  &MZ2*S2A*SAB*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) - ((0.D0 + 0.0625D0*I)*CBA*MZ2*SAB2*D&
  &BLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) + ((0.D0 + 0.03125D0*I)*CAB*CBA*Mh02*MZ2*S2A*SBA*D&
  &BLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW*S2B2) - ((0.D0 + 0.015625D0*I)*CBA*Mh02*MZ2*S2A*SBA&
  &2*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW*S2B) - ((0.D0 + 0.046875D0*I)*CBA2*SAB*A0(MZ2)*D&
  &BLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) - ((0.D0 + 0.046875D0*I)*CBA2*S2A*SAB*A0(MZ2)*DBLE(&
  &EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) + ((0.D0 + 0.09375D0*I)*CBA*SAB2*A0(MZ2)*DBLE(EL**INT(&
  &3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) - ((0.D0 + 0.046875D0*I)*CAB*CBA*Mh02*S2A*SBA*A0(MZ2)*DBLE(EL*&
  &*INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW*S2B2) + ((0.D0 + 0.0234375D0*I)*CBA*Mh02*S2A*SBA2*A0(MZ2)*&
  &DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW*S2B) - ((0.D0 + 0.015625D0*I)*CBA2*GaugeXiZ*SAB*A0&
  &(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) - ((0.D0 + 0.015625D0*I)*CBA2*Gauge&
  &XiZ*S2A*SAB*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) + ((0.D0 + 0.03125D0&
  &*I)*CBA*GaugeXiZ*SAB2*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B2) - ((0.D0 +&
  & 0.015625D0*I)*CAB*CBA*GaugeXiZ*Mh02*S2A*SBA*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/ &
  &(CW2*MHH2*MW*S2B2) + ((0.D0 + 0.0078125D0*I)*CBA*GaugeXiZ*Mh02*S2A*SBA2*A0(GaugeXiZ*MZ2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D&
  &0))* DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW*S2B) - ((0.D0 + 0.03125D0*I)*MA02*MZ2*DBLE(CBA**INT(3.D0))*DBLE(EL**INT(3.D0))*DBLE(PI&
  &**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW) - ((0.D0 + 0.015625D0*I)*MZ2*S2A*DBLE(CBA**INT(3.D0))*DBLE(EL**INT(3.D0))*D&
  &BLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) + ((0.D0 + 0.046875D0*I)*MA02*A0(MZ2)*DBLE(CBA**INT(3.D0))*DBLE(EL**IN&
  &T(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW) + ((0.D0 + 0.0234375D0*I)*S2A*A0(MZ2)*DBLE(CBA**INT(3.D0))*&
  &DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(CW2*MW*S2B) + ((0.D0 + 0.015625D0*I)*GaugeXiZ*MA02*A0(GaugeXi&
  &Z*MZ2)*DBLE(CBA**INT(3.D0))*DBLE(EL**INT(3.D0))* DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*MHH2*MW) + ((0.D0 + 0.0078125&
  &D0*I)*GaugeXiZ*S2A*A0(GaugeXiZ*MZ2)*DBLE(CBA**INT(3.D0))* DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(CW2*&
  &MW*S2B)))/(MW*SW)

 amplitudes(40) = ((0.D0 - 0.5D0*I)*EL*PI2*(CBA*(2.D0*MA02 - 1.D0*MHH2) + (SAB*(2.D0*MHH2 - (4.D0*Lambda5*MW2*SW2)/EL2))/S2B)* ((&
  &(0.D0 - 0.1875D0*I)*CBA*EL*Lambda5*MW*SAB2*A0(MW2)*DBLE(PI**INT(-4.D0)))/(MHH2*S2B2*SW) - ((0.D0 + 0.1875D0*I)*C2B2*CBA*EL*Lam&
  &bda5*MW*SBA2*A0(MW2)*DBLE(PI**INT(-4.D0)))/(MHH2*S2B2*SW) - ((0.D0 + 0.0625D0*I)*CBA*EL*GaugeXiW*Lambda5*MW*SAB2*A0(GaugeXiW*M&
  &W2)*DBLE(PI**INT(-4.D0)))/(MHH2*S2B2*SW) - ((0.D0 + 0.0625D0*I)*C2B2*CBA*EL*GaugeXiW*Lambda5*MW*SBA2*A0(GaugeXiW*MW2)*DBLE(PI*&
  &*INT(-4.D0)))/(MHH2*S2B2*SW) + ((0.D0 + 0.125D0*I)*CBA*EL*Lambda5*SAB2*DBLE(MW**INT(3.D0))*DBLE(PI**INT(-4.D0)))/(MHH2*S2B2*SW&
  &) + ((0.D0 + 0.125D0*I)*C2B2*CBA*EL*Lambda5*SBA2*DBLE(MW**INT(3.D0))*DBLE(PI**INT(-4.D0)))/(MHH2*S2B2*SW) + ((0.D0 + 0.0625D0*&
  &I)*CBA2*MW*SAB*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/S2B + ((0.D0 + 0.0625D0*I)*CBA2*MW*S2A*SAB*DBLE(&
  &EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/S2B2 - ((0.D0 + 0.125D0*I)*CBA*MW*SAB2*DBLE(EL**INT(3.D0))*DBLE(PI**&
  &INT(-4.D0))*DBLE(SW**INT(-3.D0)))/S2B2 + ((0.D0 + 0.0625D0*I)*CAB*CBA*Mh02*MW*S2A*SBA*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))&
  &*DBLE(SW**INT(-3.D0)))/(MHH2*S2B2) - ((0.D0 + 0.03125D0*I)*CBA*Mh02*MW*S2A*SBA2*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(&
  &SW**INT(-3.D0)))/(MHH2*S2B) - ((0.D0 + 0.09375D0*I)*CBA2*SAB*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.&
  &D0)))/(MW*S2B) - ((0.D0 + 0.09375D0*I)*CBA2*S2A*SAB*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MW&
  &*S2B2) + ((0.D0 + 0.1875D0*I)*CBA*SAB2*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MW*S2B2) - ((0.&
  &D0 + 0.09375D0*I)*CAB*CBA*Mh02*S2A*SBA*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MHH2*MW*S2B2) +&
  & ((0.D0 + 0.046875D0*I)*CBA*Mh02*S2A*SBA2*A0(MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MHH2*MW*S2B)&
  & - ((0.D0 + 0.03125D0*I)*CBA2*GaugeXiW*SAB*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MW&
  &*S2B) - ((0.D0 + 0.03125D0*I)*CBA2*GaugeXiW*S2A*SAB*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.&
  &D0)))/(MW*S2B2) + ((0.D0 + 0.0625D0*I)*CBA*GaugeXiW*SAB2*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**IN&
  &T(-3.D0)))/(MW*S2B2) - ((0.D0 + 0.03125D0*I)*CAB*CBA*GaugeXiW*Mh02*S2A*SBA*A0(GaugeXiW*MW2)*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-&
  &4.D0))*DBLE(SW**INT(-3.D0)))/ (MHH2*MW*S2B2) + ((0.D0 + 0.015625D0*I)*CBA*GaugeXiW*Mh02*S2A*SBA2*A0(GaugeXiW*MW2)*DBLE(EL**INT&
  &(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(MHH2*MW*S2B) - ((0.D0 + 0.0625D0*I)*MA02*MW*DBLE(CBA**INT(3.D0))*DBLE(EL*&
  &*INT(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/MHH2 - ((0.D0 + 0.03125D0*I)*MW*S2A*DBLE(CBA**INT(3.D0))*DBLE(EL**INT(&
  &3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/ S2B + ((0.D0 + 0.09375D0*I)*MA02*A0(MW2)*DBLE(CBA**INT(3.D0))*DBLE(EL**INT(&
  &3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MHH2*MW) + ((0.D0 + 0.046875D0*I)*S2A*A0(MW2)*DBLE(CBA**INT(3.D0))*DBLE(EL*&
  &*INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/(MW*S2B) + ((0.D0 + 0.03125D0*I)*GaugeXiW*MA02*A0(GaugeXiW*MW2)*DBLE(CB&
  &A**INT(3.D0))*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))*DBLE(SW**INT(-3.D0)))/ (MHH2*MW) + ((0.D0 + 0.015625D0*I)*GaugeXiW*S2A*&
  &A0(GaugeXiW*MW2)*DBLE(CBA**INT(3.D0))*DBLE(EL**INT(3.D0))*DBLE(PI**INT(-4.D0))* DBLE(SW**INT(-3.D0)))/(MW*S2B)))/(MW*SW)

  totalAmplitude = (0D0,0D0)
 do j=1,40
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do

 HHtoA0A0Tad = totalAmplitude
end function HHtoA0A0Tad