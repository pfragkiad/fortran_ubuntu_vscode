program test
   !use samplelib
   implicit none

   ! integer(4) :: i = 50, j
   ! print *,"KEFTEDES!", calc(5)
   ! j = calc(i)
   ! print *,j

   print *, df(f2,4d0)


contains
   real(8) function df(f, t)
      real(8),external :: f
      real(8),parameter :: h = 1d-8

      real(8),intent(in) :: t ! = 5.0

      df = (f(t+h/2.0)-f(t-h/2.0))/h
   end function


   pure real(8) function f2(x)
      real(8),intent(in) :: x
      f2 =  x ** 2
   end function

   pure real(8) function f3(x)
      real(8),intent(in) :: x
      f3 = 3.0 * x
   end function




   pure integer(4) function calc(x)
      integer(4),intent(in)::x
      calc = 10*x
   end function
end program
