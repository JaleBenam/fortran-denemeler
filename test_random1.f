C
C
C FILE: test_random.f
C
C EXAMPLE TO COMPUTE, STORE, AND PRINT RANDOM NUMBERS (RANDOM)
C
       PROGRAM COMRAN
      implicit real*8 (a-h,o-z)
      DATA  L/777/
      DATA  N/10000/
      DO 2 I = 1,N 
        X = ABS(RANDOM(L))    
        WRITE(2,3) X
   2  CONTINUE
   3  FORMAT(F22.14)     
      STOP
      END 
  
 
         FUNCTION RANDOM(L)
        implicit real *8 (a-h,o-z)
c       parameter ( ia=1,im=69069,m=2147483647,r=1.0d0/m)
c       parameter ( ia=0,im=5,m=2048,r=1.0d0/m)
c       parameter ( ia=1,im=69069,m=2048,r=1.0d0/m)
c         parameter ( ia=0,im=16807,m=2147483647,r=1.0d0/m)
c       parameter ( ia=0,im=5,m=2048,r=1.0d0/m)
c       parameter ( ia=1,im=69069,m=2048,r=1.0d0/m)
          parameter ( ia=0,im=16807,m=2147483647,r=1.0d0/m)
c         parameter ( ia=0,im=5,m=128,r=1.0d0/m)


        L=mod(L*im+ia,m)
        random= real(L)*r
        return
        end


