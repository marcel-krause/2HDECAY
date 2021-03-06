double precision function HptoA0WpTree()
 use constants
 implicit none
#include "looptools.h"
 double precision :: totalAmplitude

 totalAmplitude = (0.25D0*EL2*(-2.D0*MA02*MHp2 - 2.D0*MA02*MW2 - 2.D0*MHp2*MW2 + DBLE(MA0**INT(4.D0)) + DBLE(MHp**INT(4.D0)) + DB&
  &LE(MW**INT(4.D0))))/(MW2*SW2)

 HptoA0WpTree = totalAmplitude
end function HptoA0WpTree