module samplelib
   implicit none

   private

   public :: calc3

contains
   integer(4) function calc3(x)
      integer(4),intent(in)::x
      calc3 = 10*x
   end function

end module samplelib
