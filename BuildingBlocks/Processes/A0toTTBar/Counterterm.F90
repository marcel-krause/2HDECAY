double precision function A0toTTBarCT(x)
 use constants
 use counterterms
 implicit none
#include "looptools.h"
 integer, intent(in) :: x
 double precision :: totalAmplitude

 select case (x)
	case (1)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSUsual()/MT - dMW2Usual()/(2D0*MW2) - 1D0/(SB*CB)*dBeta1KanUsual() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSUsual()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (2)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSUsual()/MT - dMW2Usual()/(2D0*MW2) - 1D0/(SB*CB)*dBeta2KanUsual() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSUsual()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (3)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBeta1KanAlter() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (4)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBeta2KanAlter() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (5)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBeta1PinchPStar() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (6)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBeta2PinchPStar() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (7)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBeta1PinchOS() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (8)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBeta2PinchOS() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (9)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBetaProcDep1Alter() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (10)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBetaProcDep2Alter() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (11)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBetaProcDep3Alter() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (12)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBetaOS1Alter() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (13)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBetaOS2Alter() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (14)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBetaOS12Alter() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (15)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBetaBFMSAlter() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (16)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSUsual()/MT - dMW2Usual()/(2D0*MW2) - 1D0/(SB*CB)*dBetaMSBarUsual() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSUsual()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
	case (17)
		totalAmplitude = ( dgAtMZ()/(EL/SW) + dMTOSAlter()/MT - dMW2Alter()/(2D0*MW2) - 1D0/(SB*CB)*dBetaMSBarAlter() + &
			& dZA0A0OS()/2D0 + TB*dZG0A0OSAlter()/2D0 + dZTTOSLeft()/2D0 + dZTTOSRight()/2D0 )*&
			& (1.5D0*EL2*MA02*MT2)/(MW2*SW2*TB2)
 end select

 A0toTTBarCT = totalAmplitude
end function A0toTTBarCT
