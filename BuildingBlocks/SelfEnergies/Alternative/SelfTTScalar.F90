double complex function SelfTTScalarAlter(x)
 use constants
 implicit none
#include "looptools.h"
 double precision, intent(in) :: x
 integer :: j
 double complex :: totalAmplitude
 double complex :: amplitudes(106)

 amplitudes(1) = (0.0625D0*CA*EL2*ME2*Yuk4*A0(ME2))/(Mh02*MW2*PI2*SB*SW2)

 amplitudes(2) = (0.0625D0*CA*EL2*MM2*Yuk4*A0(MM2))/(Mh02*MW2*PI2*SB*SW2)

 amplitudes(3) = (0.0625D0*CA*EL2*ML2*Yuk4*A0(ML2))/(Mh02*MW2*PI2*SB*SW2)

 amplitudes(4) = (0.1875D0*CA2*EL2*MU2*A0(MU2))/(Mh02*MW2*PI2*SB2*SW2)

 amplitudes(5) = (0.1875D0*CA2*EL2*MC2*A0(MC2))/(Mh02*MW2*PI2*SB2*SW2)

 amplitudes(6) = (0.1875D0*CA2*EL2*MT2*A0(MT2))/(Mh02*MW2*PI2*SB2*SW2)

 amplitudes(7) = (0.1875D0*CA*EL2*MD2*Yuk1*A0(MD2))/(Mh02*MW2*PI2*SB*SW2)

 amplitudes(8) = (0.1875D0*CA*EL2*MS2*Yuk1*A0(MS2))/(Mh02*MW2*PI2*SB*SW2)

 amplitudes(9) = (0.1875D0*CA*EL2*MB2*Yuk1*A0(MB2))/(Mh02*MW2*PI2*SB*SW2)

 amplitudes(10) = (0.0625D0*EL2*ME2*SA*Yuk5*A0(ME2))/(MHH2*MW2*PI2*SB*SW2)

 amplitudes(11) = (0.0625D0*EL2*MM2*SA*Yuk5*A0(MM2))/(MHH2*MW2*PI2*SB*SW2)

 amplitudes(12) = (0.0625D0*EL2*ML2*SA*Yuk5*A0(ML2))/(MHH2*MW2*PI2*SB*SW2)

 amplitudes(13) = (0.1875D0*EL2*MU2*SA2*A0(MU2))/(MHH2*MW2*PI2*SB2*SW2)

 amplitudes(14) = (0.1875D0*EL2*MC2*SA2*A0(MC2))/(MHH2*MW2*PI2*SB2*SW2)

 amplitudes(15) = (0.1875D0*EL2*MT2*SA2*A0(MT2))/(MHH2*MW2*PI2*SB2*SW2)

 amplitudes(16) = (0.1875D0*EL2*MD2*SA*Yuk2*A0(MD2))/(MHH2*MW2*PI2*SB*SW2)

 amplitudes(17) = (0.1875D0*EL2*MS2*SA*Yuk2*A0(MS2))/(MHH2*MW2*PI2*SB*SW2)

 amplitudes(18) = (0.1875D0*EL2*MB2*SA*Yuk2*A0(MB2))/(MHH2*MW2*PI2*SB*SW2)

 amplitudes(19) = 0D0

 amplitudes(20) = 0D0

 amplitudes(21) = 0D0

 amplitudes(22) = 0D0

 amplitudes(23) = 0D0

 amplitudes(24) = 0D0

 amplitudes(25) = 0D0

 amplitudes(26) = 0D0

 amplitudes(27) = 0D0

 amplitudes(28) = 0D0

 amplitudes(29) = 0D0

 amplitudes(30) = 0D0

 amplitudes(31) = 0D0

 amplitudes(32) = 0D0

 amplitudes(33) = 0D0

 amplitudes(34) = 0D0

 amplitudes(35) = 0D0

 amplitudes(36) = 0D0

 amplitudes(37) = (-0.0234375D0*CA*(2.D0*CAB*EL2*Mh02 + EL2*Mh02*S2A*SBA - 4.D0*CAB*CBA2*Lambda5*MW2*SW2)*A0(Mh02))/(Mh02*MW2*PI2&
  &*S2B*SB*SW2)

 amplitudes(38) = (0.0078125D0*CA*SBA*(EL2*(Mh02 + 2.D0*MHH2)*S2A - 2.D0*Lambda5*MW2*(3.D0*S2A + S2B)*SW2)*A0(MHH2))/(Mh02*MW2*PI&
  &2*S2B*SB*SW2)

 amplitudes(39) = (0.0078125D0*CA*(EL2*(-2.D0*MA02 + Mh02)*S2B*SBA + CAB*(-2.D0*EL2*Mh02 + 4.D0*Lambda5*MW2*SW2))*A0(MA02))/(Mh02&
  &*MW2*PI2*S2B*SB*SW2)

 amplitudes(40) = (-0.0078125D0*CA*EL2*SBA*A0(MZ2))/(MW2*PI2*SB*SW2)

 amplitudes(41) = (0.015625D0*CA*(EL2*(Mh02 - 2.D0*MHp2)*S2B*SBA + CAB*(-2.D0*EL2*Mh02 + 4.D0*Lambda5*MW2*SW2))*A0(MHp2))/(Mh02*M&
  &W2*PI2*S2B*SB*SW2)

 amplitudes(42) = (-0.015625D0*CA*EL2*SBA*A0(MW2))/(MW2*PI2*SB*SW2)

 amplitudes(43) = (-0.0078125D0*CBA*SA*(EL2*(2.D0*Mh02 + MHH2)*S2A + 2.D0*Lambda5*MW2*(-3.D0*S2A + S2B)*SW2)*A0(Mh02))/(MHH2*MW2*&
  &PI2*S2B*SB*SW2)

 amplitudes(44) = (0.0234375D0*SA*(CBA*EL2*MHH2*S2A - 2.D0*EL2*MHH2*SAB + 4.D0*Lambda5*MW2*SAB*SBA2*SW2)*A0(MHH2))/(MHH2*MW2*PI2*&
  &S2B*SB*SW2)

 amplitudes(45) = (0.0078125D0*SA*(CBA*EL2*(-2.D0*MA02 + MHH2)*S2B - 2.D0*EL2*MHH2*SAB + 4.D0*Lambda5*MW2*SAB*SW2)*A0(MA02))/(MHH&
  &2*MW2*PI2*S2B*SB*SW2)

 amplitudes(46) = (-0.0078125D0*CBA*EL2*SA*A0(MZ2))/(MW2*PI2*SB*SW2)

 amplitudes(47) = (0.015625D0*SA*(CBA*EL2*(MHH2 - 2.D0*MHp2)*S2B - 2.D0*EL2*MHH2*SAB + 4.D0*Lambda5*MW2*SAB*SW2)*A0(MHp2))/(MHH2*&
  &MW2*PI2*S2B*SB*SW2)

 amplitudes(48) = (-0.015625D0*CBA*EL2*SA*A0(MW2))/(MW2*PI2*SB*SW2)

 amplitudes(49) = (0.015625D0*CA*EL2*SBA*A0(MZ2))/(CW2*Mh02*PI2*SB*SW2)

 amplitudes(50) = (0.015625D0*CA*EL2*SBA*A0(MW2))/(Mh02*PI2*SB*SW2)

 amplitudes(51) = (0.015625D0*CA*EL2*SBA*A0(MW2))/(Mh02*PI2*SB*SW2)

 amplitudes(52) = (0.015625D0*CBA*EL2*SA*A0(MZ2))/(CW2*MHH2*PI2*SB*SW2)

 amplitudes(53) = (0.015625D0*CBA*EL2*SA*A0(MW2))/(MHH2*PI2*SB*SW2)

 amplitudes(54) = (0.015625D0*CBA*EL2*SA*A0(MW2))/(MHH2*PI2*SB*SW2)

 amplitudes(55) = (-0.015625D0*EL2*A0(MW2)*(DiracGamma(6.D0) - 1.D0*DiracGamma(7.D0)))/(MZ2*PI2*SW2)

 amplitudes(56) = (0.015625D0*EL2*A0(MW2)*(DiracGamma(6.D0) - 1.D0*DiracGamma(7.D0)))/(MZ2*PI2*SW2)

 amplitudes(57) = (0.03125D0*CA*EL2*SBA*(MZ2 - 2.D0*A0(MZ2)))/(CW2*Mh02*PI2*SB*SW2)

 amplitudes(58) = (0.0625D0*CA*EL2*SBA*(MW2 - 2.D0*A0(MW2)))/(Mh02*PI2*SB*SW2)

 amplitudes(59) = (0.03125D0*CBA*EL2*SA*(MZ2 - 2.D0*A0(MZ2)))/(CW2*MHH2*PI2*SB*SW2)

 amplitudes(60) = (0.0625D0*CBA*EL2*SA*(MW2 - 2.D0*A0(MW2)))/(MHH2*PI2*SB*SW2)

 amplitudes(61) = 0.D0

 amplitudes(62) = 0.D0

 amplitudes(63) = 0.D0

 amplitudes(64) = 0.D0

 amplitudes(65) = 0.D0

 amplitudes(66) = 0.D0

 amplitudes(67) = 0.D0

 amplitudes(68) = 0.D0

 amplitudes(69) = 0.D0

 amplitudes(70) = 0.D0

 amplitudes(71) = 0.D0

 amplitudes(72) = 0.D0

 amplitudes(73) = 0.D0

 amplitudes(74) = 0.D0

 amplitudes(75) = 0.D0

 amplitudes(76) = 0.D0

 amplitudes(77) = 0.D0

 amplitudes(78) = 0.D0

 amplitudes(79) = 0.D0

 amplitudes(80) = 0.D0

 amplitudes(81) = 0.D0

 amplitudes(82) = 0.D0

 amplitudes(83) = 0.D0

 amplitudes(84) = 0.D0

 amplitudes(85) = 0.D0

 amplitudes(86) = 0.D0

 amplitudes(87) = 0.D0

 amplitudes(88) = 0.D0

 amplitudes(89) = 0.D0

 amplitudes(90) = 0.D0

 amplitudes(91) = 0.D0

 amplitudes(92) = (0.015625D0*CA2*EL2*MT2*B0(x, Mh02, MT2))/(MW2*PI2*SB2*SW2)

 amplitudes(93) = (0.015625D0*EL2*MT2*SA2*B0(x, MHH2, MT2))/(MW2*PI2*SB2*SW2)

 amplitudes(94) = (-0.015625D0*EL2*MT2*B0(x, MA02, MT2))/(MW2*PI2*SW2*TB2)

 amplitudes(95) = (-0.015625D0*EL2*MT2*B0(x, MT2, MZ2))/(MW2*PI2*SW2)

 amplitudes(96) = (0.03125D0*CKM31*CKMC31*EL2*MD2*Yuk3*B0(x, MD2, MHp2))/(MW2*PI2*SW2*TB)

 amplitudes(97) = (0.03125D0*CKM32*CKMC32*EL2*MS2*Yuk3*B0(x, MHp2, MS2))/(MW2*PI2*SW2*TB)

 amplitudes(98) = (0.03125D0*CKM33*CKMC33*EL2*MB2*Yuk3*B0(x, MB2, MHp2))/(MW2*PI2*SW2*TB)

 amplitudes(99) = (-0.03125D0*CKM31*CKMC31*EL2*MD2*B0(x, MD2, MW2))/(MW2*PI2*SW2)

 amplitudes(100) = (-0.03125D0*CKM32*CKMC32*EL2*MS2*B0(x, MS2, MW2))/(MW2*PI2*SW2)

 amplitudes(101) = (-0.03125D0*CKM33*CKMC33*EL2*MB2*B0(x, MB2, MW2))/(MW2*PI2*SW2)

 amplitudes(102) = (-0.05555555555555555D0*EL2*(-1.D0 + 2.D0*B0(x, 0.D0, MT2)))/PI2

 amplitudes(103) = (-0.013888888888888888D0*EL2*(-3.D0 + 4.D0*SW2)*(-1.D0 + 2.D0*B0(x, MT2, MZ2)))/(CW2*PI2)

 amplitudes(104) = 0.D0

 amplitudes(105) = 0.D0

 amplitudes(106) = 0.D0

  totalAmplitude = (0D0,0D0)
 do j=1,106
  totalAmplitude = totalAmplitude + amplitudes(j)
 end do
 SelfTTScalarAlter = totalAmplitude
end function SelfTTScalarAlter

